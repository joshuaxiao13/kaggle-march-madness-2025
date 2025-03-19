library(dplyr)
  
train_years <- c(2021, 2022, 2023, 2024)
years <- c(2021, 2022, 2023, 2024)

Xy_WinProb <- NULL

merge_with_expected_tournament_wins <- function(year, winProbTrain) {
  expectedTournamentWins <- read.csv(paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/prediction/expected-tournament-wins-W-", year, ".csv"))
  print(colnames(winProbTrain))
  print(colnames(expectedTournamentWins))
  Xy <- merge(winProbTrain, expectedTournamentWins, by.x = "X0_TeamName", by.y = "TeamName")
  Xy <- merge(Xy, expectedTournamentWins, by.x = "X1_TeamName", by.y = "TeamName")
  Xy <- Xy %>% rename("X0_Expected.Tournament.Wins" = "Expected.Tournament.Wins.x")
  Xy <- Xy %>% rename("X1_Expected.Tournament.Wins" = "Expected.Tournament.Wins.y")
  Xy
}

load_test_by_year <- function(year) {
  winProbTest <- read.csv(paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/datasets/X_test_W_", year, ".csv"))
  merge_with_expected_tournament_wins(year, winProbTest)
}

load_input_by_year <- function(year) {
  winProbTrain <- read.csv(paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/datasets/Xy_WinProb_W_", year, ".csv"))
  merge_with_expected_tournament_wins(year, winProbTrain)
}

for (year in years) {
  Xy_WinProb[[as.character(year)]] <- load_input_by_year(year)
}
for (year in train_years) {
  print(year)
  print(ncol(Xy_WinProb[[as.character(year)]]))
  Xy_WinProb$train <- rbind(Xy_WinProb$train, Xy_WinProb[[as.character(year)]]) 
}

MSE <- function (y_pred, y_true) {
  mean((y_pred - y_true)^2)
}

MSE <- function (y_pred, y_true) {
  mean((y_pred - y_true)^2)
}

# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_BARTHAG + X0_3P.ODDIFF + X0_Top30Wins + X1_ADJOE + X1_ADJDE * X1_BARTHAG + X1_BARTHAG + X1_3P.ODDIFF + X1_Top30Wins, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_Expected.Tournament.Wins + X1_ADJOE + X1_ADJDE + X1_Expected.Tournament.Wins, data=Xy_WinProb$train, family=binomial)
logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_EFG. + X1_ADJOE + X1_ADJDE + X1_EFG. + X0_Expected.Tournament.Wins + X1_Expected.Tournament.Wins + X0_PomOrdinalRank + X1_PomOrdinalRank, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_BARTHAG  + X0_Expected.Tournament.Wins + X0_3P.ODDIFF + X1_ADJOE + X1_ADJDE + X1_BARTHAG + X1_Expected.Tournament.Wins + X1_3P.ODDIFF, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_BARTHAG + X0_EFG. + X0_3P. + X0_Expected.Tournament.Wins + X0_Top30Wins + X1_ADJOE + X1_BARTHAG + X1_EFG. + X1_3P. + X1_Expected.Tournament.Wins + X1_Top30Wins, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_BARTHAG + X0_EFG. + X0_EFGD. + X0_3P. + X0_Top30Wins + X1_ADJOE + X1_ADJDE + X1_BARTHAG + X1_EFG. + X0_EFGD. + X1_3P. + X1_Top30Wins, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_3P.ODDIFF + X0_ADJOE + X1_ADJOE + X1_ADJDE + X1_3P.ODDIFF, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_BARTHAG + X0_3P.ODDIFF + X1_ADJOE + X1_ADJDE + X1_BARTHAG + X1_3P.ODDIFF, data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_EFG. + X1_ADJOE + X1_ADJDE + X1_EFG., data=Xy_WinProb$train, family=binomial)
# logit <- glm(X0_ProbWin ~ X0_ADJOE + X0_ADJDE + X0_BARTHAG + X1_ADJOE + X1_ADJDE + X1_BARTHAG, data=Xy_WinProb$train, family=binomial)
summary(logit)

# logit <- step(logit, direction="backward")

MSE(predict(logit, Xy_WinProb$`2021`, type="response"), Xy_WinProb$`2021`$X0_ProbWin)
MSE(predict(logit, Xy_WinProb$`2022`, type="response"), Xy_WinProb$`2022`$X0_ProbWin)
MSE(predict(logit, Xy_WinProb$`2023`, type="response"), Xy_WinProb$`2023`$X0_ProbWin)
MSE(predict(logit, Xy_WinProb$`2024`, type="response"), Xy_WinProb$`2024`$X0_ProbWin)

# Predict 2023 (use only years before 2023)
X_test_2023 <- load_test_by_year(2023)
pred_prob <- predict(logit, X_test_2023, type="response")
write.csv(cbind(X_test_2023[c("TeamID_0", "TeamID_1")], pred_prob), paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/prediction/2023-tourney-team-W-predictions.csv"), row.names=FALSE)

# Predict 2025
X_test_2025 <- load_test_by_year(2025)
pred_prob <- predict(logit, X_test_2025, type="response")
write.csv(cbind(X_test_2025[c("TeamID_0", "TeamID_1")], pred_prob), paste0("//wsl.localhost/Ubuntu-24.04/home/joshux/projects/march-madness-2025/prediction/2025-tourney-team-W-predictions.csv"), row.names=FALSE)