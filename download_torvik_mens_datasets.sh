mens_output_dir="datasets/torvik/mens"
header_file_path="datasets/torvik/torvik_team_header.csv"

# 2025 Selection Sunday: 2025-03-16

cp ${header_file_path} ${mens_output_dir}/team_2025.csv 
wget -O- \
	"https://barttorvik.com/?year=2025&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20241101&end=20250316&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2025.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2025.csv
wget -O- \
	"https://barttorvik.com/?year=2025&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20241101&end=20250316&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2025.csv

# 2024 Selection Sunday: 2024-03-17

cp ${header_file_path} ${mens_output_dir}/team_2024.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2024.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2024.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2024.csv

# 2023 Selection Sunday: 2023-03-12

cp ${header_file_path} ${mens_output_dir}/team_2023.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2023.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2023.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2023.csv

# 2022 Selection Sunday: 2022-03-13

cp ${header_file_path} ${mens_output_dir}/team_2022.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2022.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2022.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2022.csv


# 2021 Selection Sunday: 2021-03-14

cp ${header_file_path} ${mens_output_dir}/team_2021.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2021.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2021.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2021.csv

# 2019 Selection Sunday: 2019-03-17

cp ${header_file_path} ${mens_output_dir}/team_2019.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2020&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20181101&end=20190317&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2019.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2019.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2019&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20181101&end=20190317&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2019.csv

# 2018 Selection Sunday: 2018-03-11

cp ${header_file_path} ${mens_output_dir}/team_2018.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2018&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20171101&end=20180311&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2018.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2018.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2018&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20171101&end=20180311&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2018.csv

# 2017 Selection Sunday: 2017-03-12

cp ${header_file_path} ${mens_output_dir}/team_2017.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2017&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20161101&end=20170312&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2017.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2017.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2017&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20161101&end=20170312&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2017.csv

# 2016 Selection Sunday: 2016-03-13

cp ${header_file_path} ${mens_output_dir}/team_2016.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2016&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20151101&end=20160313&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2016.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2016.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2016&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20151101&end=20160313&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2016.csv

# 2015 Selection Sunday: 2015-03-15

cp ${header_file_path} ${mens_output_dir}/team_2015.csv 
wget -O- \
	"https://barttorvik.com/trank.php?year=2015&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20141101&end=20150315&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2015.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2015.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2015&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20141101&end=20150315&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2015.csv

# 2014 Selection Sunday: 2014-03-16

cp ${header_file_path} ${mens_output_dir}/team_2014.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2014&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20131101&end=20140316&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2014.csv

cp ${header_file_path} ${mens_output_dir}/top30_wins_2014.csv
wget -O- \
	"https://barttorvik.com/trank.php?year=2014&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20131101&end=20140316&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/top30_wins_2014.csv
