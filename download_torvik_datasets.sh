mens_output_dir="datasets/torvik/mens"
header_file_path="datasets/torvik/torvik_team_header.csv"

# 2024 Selection Sunday: 2024-03-17

cp ${header_file_path} ${mens_output_dir}/team_2024.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2024.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2024.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2024.csv

# 2023 Selection Sunday: 2023-03-12

cp ${header_file_path} ${mens_output_dir}/team_2023.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2023.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2023.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2023.csv

# 2022 Selection Sunday: 2022-03-13

cp ${header_file_path} ${mens_output_dir}/team_2022.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2022.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2022.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2022.csv


# 2021 Selection Sunday: 2021-03-14

cp ${header_file_path} ${mens_output_dir}/team_2021.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2021.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2021.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2021.csv

# 2019 Selection Sunday: 2019-03-17

cp ${header_file_path} ${mens_output_dir}/team_2019.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2020&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20181101&end=20190317&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2019.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2019.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2019&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20181101&end=20190317&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2019.csv

# 2018 Selection Sunday: 2018-03-11

cp ${header_file_path} ${mens_output_dir}/team_2018.csv 
wget -qO- \
	"https://barttorvik.com/trank.php?year=2018&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20171101&end=20180311&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2018.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2018.csv
wget -qO- \
	"https://barttorvik.com/trank.php?year=2018&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20171101&end=20180311&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2018.csv
