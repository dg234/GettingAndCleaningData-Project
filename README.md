GettingAndCleaningData-Project
==============================
**Introduction**:  
This repo/project is for the "Getting and cleaning data" coursera course.  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

**Instructions**:

1.  Clone this repository
2.  Change the working directory to GettingAndCleaningData-Project/ folder
3.  Download the data source zip file
4.  Unzip the source zip file: unzip getdata-projectfiles-UCI HAR Dataset.zip
5.  Source/Run run_analysis.R
  
The code has been tested on Mac OSX and might have to be adapted for other operating systems.

**Code Overview:**  
The code in the run_analysis.R file:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**Output**:  
__run_analysis.R__ generates the __tidy_data.txt__ file:

tidy_data.txt: contains mean and standard deviation for each measurements from the training and test data sets.  Descriptive label names are used for the fields in the data set.


