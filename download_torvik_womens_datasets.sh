womens_output_dir="datasets/torvik/womens"
header_file_path="datasets/torvik/torvik_team_header.csv"

# 2025 Selection Sunday: 2025-03-16
cp ${header_file_path} ${womens_output_dir}/team_2025.csv 
wget -O- \
	"https://barttorvik.com/ncaaw/?year=2025&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20241101&end=20250316&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/team_2025.csv

cp ${header_file_path} ${womens_output_dir}/top30_wins_2025.csv
wget -O- \
	"https://barttorvik.com/ncaaw/?year=2025&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20241101&end=20250316&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/top30_wins_2025.csv


# 2024 Selection Sunday: 2024-03-17

cp ${header_file_path} ${womens_output_dir}/team_2024.csv 
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/team_2024.csv

cp ${header_file_path} ${womens_output_dir}/top30_wins_2024.csv
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240317&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/top30_wins_2024.csv

# 2023 Selection Sunday: 2023-03-12

cp ${header_file_path} ${womens_output_dir}/team_2023.csv 
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/team_2023.csv

cp ${header_file_path} ${womens_output_dir}/top30_wins_2023.csv
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2023&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20221101&end=20230312&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/top30_wins_2023.csv

# 2022 Selection Sunday: 2022-03-13

cp ${header_file_path} ${womens_output_dir}/team_2022.csv 
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/team_2022.csv

cp ${header_file_path} ${womens_output_dir}/top30_wins_2022.csv
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2022&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20211101&end=20220313&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/top30_wins_2022.csv


# 2021 Selection Sunday: 2021-03-14

cp ${header_file_path} ${womens_output_dir}/team_2021.csv 
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/team_2021.csv

cp ${header_file_path} ${womens_output_dir}/top30_wins_2021.csv
wget -O- \
	"https://barttorvik.com/ncaaw/trank.php?year=2021&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20201101&end=20210314&top=30&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${womens_output_dir}/top30_wins_2021.csv
