# Getting and Cleaning Data Project
Final project for the Getting and Cleaning Data course

## Import files 
The first part of the script is dedicated to the uploading of all relevant files (located in the working directory) for the scope of the assignment. Relevant files for the test data set are: 
 - X_test.txt
 - y_test.txt
 - subject_test.txt 
 
Relevant files for the traning data set are: 
 - X_train.txt
 - y_train.txt
 - subject_train.txt 

The script creates two separates data sets, one for the test observations and one for the train observations. 

## Merge the test data set and the train data set 
The second part of the script combines the two data sates (test and train) into one complete data set. The script also adds the proper labels to the whole data set

## Insert a new column with activities labels 
The third part of the script creates a new column within the total data set. This column provides the description of the activity for each row of the data set

## Extract only mean and std variables 
The fourth part of the script extract from the data set created only the varibales (columns) regarding the mean and the std

## Create a new tidy data set 
The fifth part of the script creates a new data set, starting from the existing one, that provides the average value for each variable (column) according to the subject and the activity
