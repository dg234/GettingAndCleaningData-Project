**Codebook for GettingAndCleaningData-Project**  

Notes:  

Please make sure that the data.table and reshape2 packages are installed as this script uses them.  
This code assumes all data is located in "UCI HAR Dataset" folder. The content of this folder should be identical to https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Description**  

The run_analysis.R script merges the training and the test sets in one data set. It extracts only the measurements on the mean and standard deviation for each measurement.

**Output**  
One dataset is created: 
tidy_data.txt - Contains combined test and training data with measurements on the mean and standard deviation.

**Code Explanation**  
Please reference the comments in the run_analysis.R file

**Variables**  
Please reference the features_info.txt and features.txt
