GettingAndCleaningDataProject
=============================
###Introduction
This repository is related to the project of Getting and Cleaning Data course from Data Science specialization in Coursera.
the raw data required for this project can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

To start working with prepared script you should download the raw data and unzip it. Pay attention that you should copy the folder "UCI HAR Dataset" in working directory of R. Otherwise, script will start with problem.

###run_analysis.R
This file contains the script used for creating a tidy data from all raw data mentioned in previous section. This script is written in R programming language and there are comments in it to make reading the script easier. 
What actually this script does is as follows:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###code_book.md
This file contains the descriptions related to tidy data obtained by the script. In order to get fammiliar with "tidy_data.txt" data set it's better to look at this file. 
