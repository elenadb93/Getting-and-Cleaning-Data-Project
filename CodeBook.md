# Analysis Description 

## Import files 
The script uploads all the relevant files (for the scope of the analysis) located in the working directory. Relevant files are for the test group are:
 - X_test.txt
 - y_test.txt
 - subject_test.txt
  
 Relevant files for the train group are: 
 - X_train.txt
 - y_train.txt
 - subject_train.txt

The script creates a different data set for each group (test and train). 

## Merge the test data set and the train data set 
The script merges the test data set and the train data set into one complete data set. The data set is completly labelled with the corresponding variables (columns) names. 

## Insert a new column with activities labels 
The script creates a new variable that cointains the description of the activities and then adds this new variable (column) to the complete data set. 

## Extract only mean and std variables
The script extracts from the created data set only the variables (columns) referred to a mean or a std value. 

## Create a new tidy data set 
The script creates a new separate tidy data set, starting from the existing one. The new tidy data set contains the average value for each variable (column) grouped according to the subject and the actvity. 

## Export the tidy data set 
At the end, the script exports the tidy data set into a '.txt' file saved in the working directory. 
