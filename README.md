# Running The Model

1. Install dependencies

- At a bare minimum, you need to have R installed. Installing RStudio is recommended.
- Must have `python3` installed. Install the required packages. Creating a virtual environment is recommended.

```sh
pip install -r requirements.txt
```

2. Download the datasets

In the root directory, run the shell scripts.

```sh
./download_kaggle_datasets.sh
./download_torvik_mens_datasets.sh
./download_torvik_womens_datasets.sh
```

You may need to `chmod u+x`.

To download the Kaggle datasets, you need to create and add a Kaggle API key to local environment to use the Kaggle CLI. Consult the [https://www.kaggle.com/docs/api](Kaggle documentation).

3. Open `notebook.ipynb` in the Jupyter notebok interface and run the first 28 blocks.

4. Then run the R scripts in the following order

	1. `M_OLRE.R` and `W_ORLE.R`
	2. `M_WinProb.R` and `W_WinProb.R`

This is enough to do interpretation of the model.

5. To generate a csv file to submit to the Kaggle comptition, run the rest of the blocks in `notebook.ipynb`
