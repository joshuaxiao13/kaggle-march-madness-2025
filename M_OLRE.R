library(ipfr)

Xy_OLRE <- list()
all_years <- c(2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024) # omit 2025

for (year in all_years) {
  csv_file <- read.csv(paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/datasets/Xy_OLRE_M_", year, ".csv"))
  Xy_OLRE[[as.character(year)]] <- csv_file
}

gather_training_data <- function(year, all_years, Xy_OLRE) {
  Xy_train <- Xy_OLRE[[as.character(year)]] 
  colnames(Xy_train) <- colnames(Xy_OLRE[[as.character(year)]])
  for (train_year in all_years) {
    if (train_year != year) {
      if (is.null(Xy_train)) {
        Xy_train = Xy_OLRE[[as.character(train_year)]]
      } else {
        Xy_train <- rbind(Xy_train, Xy_OLRE[[as.character(train_year)]]) 
      }
    }
  }
  Xy_train
}

# Train the model with all the other years
train_model <- function(year, all_years, Xy_OLRE) {
  Xy_train <- gather_training_data(year, all_years, Xy_OLRE)
  if (nrow(Xy_train) == 0) stop("Xy_train is empty, check xy_olre structure.")
  model <- MASS::polr(ordered(Tournament.Wins, levels=0:6) ~ WinPercentage + PointDIFF + WAB + Top30Wins + PomOrdinalRank, data=Xy_train)
  print(summary(model))
  model
}

predict_probabilities <- function(model, X) {
  probs <- predict(model, X, type="probs")
  probs
  row_sum_target <- rep(1, each=nrow(X))
  col_sum_target <- c(32+4, 16, 8, 4, 2, 1, 1)
  ipu_matrix(probs, row_sum_target, col_sum_target)
}

predict_probabilities_by_year <- function(model, year) {
  predict_probabilities(model, Xy_OLRE[[as.character(year)]])
}

expected_tournament_wins_by_year <- function(model, year) {
  probs <- predict_probabilities_by_year(model, year)
  rowSums(probs * rep(0:6, each=nrow(probs)))
}

MSE <- function (y_pred, y_true) {
  mean((y_pred - y_true)^2)
}

expected_wins <- NULL
expected_wins_df <- NULL

# Use this model to predict the expected number of tournament wins
train_and_save_estimates_csv_by_year <- function(year, all_years, Xy_OLRE, return_mse = TRUE) {
  model <- train_model(year, all_years, Xy_OLRE)
  expected_wins[[as.character(year)]] <- expected_tournament_wins_by_year(model, year)
  expected_wins_df[[as.character(year)]] <- cbind(Xy_OLRE[[as.character(year)]]$TeamName, expected_wins[[as.character(year)]])
  colnames(expected_wins_df[[as.character(year)]]) <- c("TeamName", "Expected Tournament Wins")
  write.csv(expected_wins_df[[as.character(year)]], paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/prediction/expected-tournament-wins-M-", year, ".csv"), row.names=FALSE)
  if (return_mse) {
    mse <- MSE(expected_wins[[as.character(year)]], Xy_OLRE[[as.character(year)]]$Tournament.Wins)
    print(paste0("Year ", year, " -> MSE:", mse)) 
    mse
  }
}

sum <- 0
for (year in all_years) {
  sum <- sum + train_and_save_estimates_csv_by_year(year, all_years, Xy_OLRE)
}
print(paste0("Average MSE: ", sum / length(all_years)))

# Predict 2025
Xy_OLRE$`2025` <- read.csv(paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/datasets/Xy_OLRE_M_2025.csv"))
train_and_save_estimates_csv_by_year(2025, all_years, Xy_OLRE, FALSE)
