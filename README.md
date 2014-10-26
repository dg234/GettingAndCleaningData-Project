GettingAndCleaningData-Project
==============================
Introduction:
This repo/project is for the "Getting and cleaning data" coursera course.  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Instructions: 

Clone this repository
change the working directory to GettingAndCleaningData-Project/ folder
Download the data source zip file
Unzip the source zip file: unzip getdata-projectfiles-UCI\ HAR\ Dataset.zip
Source/Run run_analysis.R

The code has been tested on Mac OSX and might have to be adapted for other operating systems.

Output: 
run_analysis.R generates the tidy_data.txt file:

tidy_data.txt: contains mean and standard deviation for each measurements from the training and test data sets
