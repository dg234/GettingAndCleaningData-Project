**Codebook for GettingAndCleaningData-Project**  

Notes:  

Please make sure that the data.table and reshape2 packages are installed as this script uses them.  
This code assumes all data is located in "UCI HAR Dataset" folder. The content of this folder should be identical to https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Description**  

The run_analysis.R script merges the training and the test sets in one data set. It extracts only the measurements on the mean and standard deviation for each measurement.

**Output**  
One dataset is created: 
tidy_data.txt - Contains combined test and training data with measurements on the mean and standard deviation. Descriptive labels are used for each of the field names in the data set.

**Code Explanation**  
Please reference the comments in the run_analysis.R file

**Variables**  
Please reference the features_info.txt and features.txt for descriptions of all fields.  The below fields are included in the __tidy_data.txt__ file

* Subject - Subject ID  
* Activity - Activity performed by subject (i.e., 1-Walking, 2-Walking Upstairs, 3-Waslking Downstairs, 4-Sitting, 5-Standing or 6-Laying)
* tBodyAcc-mean()-X - mean value of the mean measurement on the X axis
* tBodyAcc-mean()-Y - mean value of the mean measurement on the Y axis
* tBodyAcc-mean()-Z - mean value of the mean measurement on the Z axis
* tBodyAcc-std()-X - mean value of the standard deviation of the measurement on the X axis
* tBodyAcc-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* tBodyAcc-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* tGravityAcc-mean()-X - mean value of the mean measurement on the X axis
* tGravityAcc-mean()-Y - mean value of the mean measurement on the Y axis
* tGravityAcc-mean()-Z - mean value of the mean measurement on the Z axis
* tGravityAcc-std()-X - mean value of the standard deviation of the measurement on the X axis
* tGravityAcc-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* tGravityAcc-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* tBodyAccJerk-mean()-X - mean value of the mean measurement on the X axis
* tBodyAccJerk-mean()-Y - mean value of the mean measurement on the Y axis
* tBodyAccJerk-mean()-Z - mean value of the mean measurement on the Z axis
* tBodyAccJerk-std()-X - mean value of the standard deviation of the measurement on the X axis
* tBodyAccJerk-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* tBodyAccJerk-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* tBodyGyro-mean()-X - mean value of the mean measurement on the X axis
* tBodyGyro-mean()-Y - mean value of the mean measurement on the Y axis
* tBodyGyro-mean()-Z - mean value of the mean measurement on the Z axis
* tBodyGyro-std()-X - mean value of the standard deviation of the measurement on the X axis
* tBodyGyro-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* tBodyGyro-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* tBodyGyroJerk-mean()-X - mean value of the mean measurement on the X axis
* tBodyGyroJerk-mean()-Y - mean value of the mean measurement on the Y axis
* tBodyGyroJerk-mean()-Z - mean value of the mean measurement on the Z axis
* tBodyGyroJerk-std()-X - mean value of the standard deviation of the measurement on the X axis
* tBodyGyroJerk-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* tBodyGyroJerk-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* tBodyAccMag-mean() - mean value of the mean measurement
* tBodyAccMag-std() - mean value of the standard deviation of the measurement
* tGravityAccMag-mean() - mean value of the mean measurement
* tGravityAccMag-std() - mean value of the standard deviation of the measurement
* tBodyAccJerkMag-mean() - mean value of the mean measurement
* tBodyAccJerkMag-std() - mean value of the standard deviation of the measurement
* tBodyGyroMag-mean() - mean value of the mean measurement
* tBodyGyroMag-std() - mean value of the standard deviation of the measurement
* tBodyGyroJerkMag-mean() - mean value of the mean measurement
* tBodyGyroJerkMag-std() - mean value of the standard deviation of the measurement
* fBodyAcc-mean()-X - mean value of the mean measurement on the X axis
* fBodyAcc-mean()-Y - mean value of the mean measurement on the Y axis
* fBodyAcc-mean()-Z - mean value of the mean measurement on the Z axis
* fBodyAcc-std()-X - mean value of the standard deviation of the measurement on the X axis
* fBodyAcc-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* fBodyAcc-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* fBodyAccJerk-mean()-X - mean value of the mean measurement on the X axis
* fBodyAccJerk-mean()-Y - mean value of the mean measurement on the Y axis
* fBodyAccJerk-mean()-Z - mean value of the mean measurement on the Z axis
* fBodyAccJerk-std()-X - mean value of the standard deviation of the measurement on the X axis
* fBodyAccJerk-std()-Y - mean value of the standard deviation of the measurement on the Y axis
* fBodyAccJerk-std()-Z - mean value of the measurement on the Z axis
* fBodyGyro-mean()-X - mean value of the mean measurement on the X axis
* fBodyGyro-mean()-Y - mean value of the mean measurement on the Y axis
* fBodyGyro-mean()-Z - mean value of the mean measurement on the Z axis
* fBodyGyro-std()-X - mean value of the standard deviation of the measurement on the X axis
* fBodyGyro-std()-Y - mean value of the standard deviation of the measurement on Y axis
* fBodyGyro-std()-Z - mean value of the standard deviation of the measurement on the Z axis
* fBodyAccMag-mean() - mean value of the mean measurement
* fBodyAccMag-std() - standard deviation value of the measurement
* fBodyBodyAccJerkMag-mean() - mean value of the mean measurement
* fBodyBodyAccJerkMag-std() - standard deviation value of the measurement
* fBodyBodyGyroMag-mean() - mean value of the mean measurement
* fBodyBodyGyroMag-std() - standard deviation value of the measurement
* fBodyBodyGyroJerkMag-mean() - mean value of the mean measurement
* fBodyBodyGyroJerkMag-std() - standard deviation value of the measurement
