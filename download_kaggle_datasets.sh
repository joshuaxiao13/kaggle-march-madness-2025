competition_name="march-machine-learning-mania-2025"
output_dir="datasets/kaggle/"
filenames=(MMasseyOrdinals.csv MTeams.csv MNCAATourneyCompactResults.csv MNCAATourneySeeds.csv MRegularSeasonCompactResults.csv)

for file in "${filenames[@]}"
do
	kaggle competitions download \
		-c $competition_name \
		-f $file \
		-p $output_dir
done
