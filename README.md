# GettingAndCleaningData
Course project for Getting and Cleaning Data

This is the course project for the Getting and Cleaning Data Coursera course. 

###There are 3 files in this repository:
* run_analysis.R - the R script that gets and cleans data creating the file tidy.txt.
* Codebook.md - this file describes the variables, the data, and transformations performed to clean the original data.
* tidy.txt - the txt file containing the average of each variable for each activity and each subject.

###Additional information about run_analysis.R

Prior to running the R script, do not forget to check the directory on you computer/laptop.

run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
