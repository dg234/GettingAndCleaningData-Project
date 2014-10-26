## This script does the following:
## 1. Merges the training and the test data sets
## 2. Extracts only the measurements on the mean and standard deviation for each measurement
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

## requires data.table library be loaded
#install.packages(data.table)
library("data.table")
## requires reshape2 library be loaded
#install.packages("reshape2")
library(reshape2)

## Load: activity labels
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

## Load: data column names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

## Load: testing data
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
SubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Load: training data
xTrain <- read.table("./UCI HAR Dataset/train/x_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
SubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Extract only the measurements on the mean and standard deviation for each measurement.
ExtractFeatures <- grepl("mean|std", features)

## Process the testing data
names(xTest) = features

## Extract only the measurements on the mean and standard deviation for each measurement
xTest = xTest[,ExtractFeatures]

## Use the descriptive activity names to name the activities in the test data sets
yTest[,2] = ActivityLabels[yTest[,1]]
names(yTest) = c("Activity_ID", "Activity_Label")
names(SubjectTest) = "subject"

# Bind test data
TestData <- cbind(as.data.table(SubjectTest), yTest, xTest)
rm(yTest, xTest)

# Process training data
names(xTrain) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
xTrain = xTrain[,ExtractFeatures]

# Use the descriptive activity names to name the activities in the training data sets
yTrain[,2] = ActivityLabels[yTrain[,1]]
names(yTrain) = c("Activity_ID", "Activity_Label")
names(SubjectTrain) = "subject"

# Bind training data
TrainingData <- cbind(as.data.table(SubjectTrain), yTrain, xTrain)
rm(yTrain, xTrain)

# Merge test and training data
data = rbind(TestData, TrainingData)
id_labels = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)
rm(data, melt_data)

write.table(tidy_data, file = "./tidy_data.txt")
rm(list = ls())
