mens_output_dir="datasets/torvik/mens"
header_file_path="datasets/torvik/torvik_team_header.csv"

# 2024 Selection Day: 2024-03-18

cp ${header_file_path} ${mens_output_dir}/team_2024.csv 

wget -qO- \
	"https://barttorvik.com/trank.php?year=2024&sort=&hteam=&t2value=&conlimit=All&state=All&begin=20231101&end=20240318&top=0&revquad=0&quad=5&venue=All&type=All&mingames=0&csv=1" \
	| sed --expression='1d' >> ${mens_output_dir}/team_2024.csv
