competition_name="march-machine-learning-mania-2025"
output_dir="datasets/kaggle/"
filenames=(SampleSubmissionStage2.csv MMasseyOrdinals.csv MTeams.csv WTeams.csv MNCAATourneyCompactResults.csv WNCAATourneyCompactResults.csv MNCAATourneySeeds.csv WNCAATourneySeeds.csv MRegularSeasonCompactResults.csv WRegularSeasonCompactResults.csv)

for file in "${filenames[@]}"
do
	kaggle competitions download \
		-c $competition_name \
		-f $file \
		-p $output_dir \
		$1
done

# If 403 Forbidden, download the file on the website https://www.kaggle.com/competitions/march-machine-learning-mania-2023/data?select=SampleSubmission2023.csv
kaggle competitions download -c march-machine-learning-mania-2023 SampleSubmission2023.csv
