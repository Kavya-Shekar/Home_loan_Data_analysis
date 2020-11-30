# Home_loan_Data_analysis  

## Repo structure
* Datasets -  contains the original and cleaned dataset with and without PCA + metadata of the dataset.  
* EDA and Visualisations - contains visualisations of the dataset and jupyter notebook(.ipynb files) in which the dataset has been explored using both R and Python.  
* Models.ipynb and DecisionTreeRegressor.ipynb contain the models used to fit the dataset. Models.ipynb contains the models for XGBoost algorithm as well as a neural network model. Whereas a Decision Tree Regressor has been used in the latter ipynb file.

## Generating dataset
* 'Datasets\2017_PUDB_Export.csv' is the original dataset used for analysis
* Run the file - 'EDA & Visualizations\Data_cleaning.ipynb' to generate 'Datasets\Cleaned_data.csv'
* Run the file - 'EDA & Visualizations\Data_preprocessing.ipynb' to generate 'Encoded_data_with_PCA.csv' and 'Datasets\Encoded_data_without_PCA.csv'

## Analysis
* Run the file - 'Classifier.ipynb' for testing the Xgboost models
* Run the file - 'Regressor.ipynb' for testing the Decision Tree Regressor model

## Visualization
* Inferences for relation between few columns are included in the folder 'EDA & Visualizations\Visualizations\'
