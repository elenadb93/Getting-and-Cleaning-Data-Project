# GETTING AND CLEANING DATA COURSE PROJECT  
## Import files 
### Import test set data
data_test <- read.delim('./test/X_test.txt', header = FALSE, sep = '')

id_act_test <- read.delim('./test/y_test.txt', header = FALSE, sep = '')

id_subj_test <- read.delim('./test/subject_test.txt', header = FALSE, sep = '')

### Create the total test set data 
data_test <- cbind(id_subj_test, id_act_test, data_test)


### Import train set data
data_train <- read.delim('./train/X_train.txt', header = FALSE, sep = '')

id_act_train <- read.delim('./train/y_train.txt', header = FALSE, sep = '')

id_subj_train <- read.delim('./train/subject_train.txt', header = FALSE, sep = '')

### Create the total train set data 
data_train <- cbind(id_subj_train, id_act_train, data_train)


## Merge the test data set and the train data set 
data_tot <- rbind(data_test, data_train)


## Label the data set  
### Import features labels 
features_labels <- read.delim('features.txt', header = FALSE, sep = '')

### Add names to the data set 
names(data_tot) <- c('Subject.ID', 'Activity.ID', features_labels[[2]])


## Insert a new column with activities labels 
### Import activities labels 
activity_labels <- read.delim('activity_labels.txt', header = FALSE, sep = '')

names(activity_labels) <- c('Activity.ID', 'Activity.Desc')

### Create the new variable (column)
new_var <- as.factor(data_tot$Activity.ID)
levels(new_var) <- activity_labels$Activity.Desc

### Add the new column to the data set 
data_tot$Activity.Desc <- as.character(new_var)

### Reorganize the data set 
data_tot <- data_tot[, c(1, 2, dim(data_tot)[2], 3:(dim(data_tot)[2]-1))]


## Extract only mean and std variables (columns)
data_tot <- data_tot[, c(1:3, grep('mean[:():]|std[:():]', names(data_tot)))]

## Create a new tidy data set 
### The tidy data set shows the average of each variable for each activity and each subject.
data_tidy <- data_tot %>% 
  group_by(Subject.ID, Activity.ID) %>% 
  summarise(across(names(data_tot)[4:dim(data_tot)[2]], mean))

head(data_tidy, 10)

## Export the tidy data set 
write.table(data_tidy, file = 'tidydata.txt', row.names = FALSE) 
