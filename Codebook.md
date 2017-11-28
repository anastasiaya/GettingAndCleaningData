# Codebook

This code book summarizes the transformation of original data and describes the contents of `tidy.txt`.

## Original data
Original data comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Cleaning steps
The following cleaning steps were taken:
1. Download and unzip the folder;
2. Read supporting data on features and activity labels; transform feastures labels into descriptive labels;
3. Read train and test data;
4. Merge train and test data and add labels;
5. Create a dataset with the average of each variable for each activity and each subject.
The resulting dataset is stored in `tidy.txt`.

## Contents of `tidy.txt`
This dataset contains the average of each measurement variable for each activity and each subject.

Identifiers:
* subject - The ID of the test subject
* activity - The type of activity performed when the corresponding measurements were taken

Activity Labels:
* WALKING: subject was walking during the test
* WALKING_UPSTAIRS: subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
* SITTING: subject was sitting during the test
* STANDING: subject was standing during the test
* LAYING: subject was laying down during the test

List of measurements:
* TimeBodyAccelerometerMeanX
* TimeBodyAccelerometerMeanY
* TimeBodyAccelerometerMeanZ
* TimeBodyAccelerometerStdX
* TimeBodyAccelerometerStdY
* TimeBodyAccelerometerStdZ
* TimeGravityAccelerometerMeanX
* TimeGravityAccelerometerMeanY
* TimeGravityAccelerometerMeanZ
* TimeGravityAccelerometerStdX
* TimeGravityAccelerometerStdY
* TimeGravityAccelerometerStdZ
* TimeBodyAccelerometerJerkMeanX
* TimeBodyAccelerometerJerkMeanY
* TimeBodyAccelerometerJerkMeanZ
* TimeBodyAccelerometerJerkStdX
* TimeBodyAccelerometerJerkStdY
* TimeBodyAccelerometerJerkStdZ
* TimeBodyGyroscopeMeanX
* TimeBodyGyroscopeMeanY
* TimeBodyGyroscopeMeanZ
* TimeBodyGyroscopeStdX
* TimeBodyGyroscopeStdY
* TimeBodyGyroscopeStdZ
* TimeBodyGyroscopeJerkMeanX
* TimeBodyGyroscopeJerkMeanY
* TimeBodyGyroscopeJerkMeanZ
* TimeBodyGyroscopeJerkStdX
* TimeBodyGyroscopeJerkStdY
* TimeBodyGyroscopeJerkStdZ
* TimeBodyAccelerometerMagnitudeMean
* TimeBodyAccelerometerMagnitudeStd
* TimeGravityAccelerometerMagnitudeMean
* TimeGravityAccelerometerMagnitudeStd
* TimeBodyAccelerometerJerkMagnitudeMean
* TimeBodyAccelerometerJerkMagnitudeStd
* TimeBodyGyroscopeMagnitudeMean
* TimeBodyGyroscopeMagnitudeStd
* TimeBodyGyroscopeJerkMagnitudeMean
* TimeBodyGyroscopeJerkMagnitudeStd
* FrequencyBodyAccelerometerMeanX
* FrequencyBodyAccelerometerMeanY
* FrequencyBodyAccelerometerMeanZ
* FrequencyBodyAccelerometerStdX
* FrequencyBodyAccelerometerStdY
* FrequencyBodyAccelerometerStdZ
* FrequencyBodyAccelerometerMeanFrequencyX
* FrequencyBodyAccelerometerMeanFrequencyY
* FrequencyBodyAccelerometerMeanFrequencyZ
* FrequencyBodyAccelerometerJerkMeanX
* FrequencyBodyAccelerometerJerkMeanY
* FrequencyBodyAccelerometerJerkMeanZ
* FrequencyBodyAccelerometerJerkStdX
* FrequencyBodyAccelerometerJerkStdY
* FrequencyBodyAccelerometerJerkStdZ
* FrequencyBodyAccelerometerJerkMeanFrequencyX
* FrequencyBodyAccelerometerJerkMeanFrequencyY
* FrequencyBodyAccelerometerJerkMeanFrequencyZ
* FrequencyBodyGyroscopeMeanX
* FrequencyBodyGyroscopeMeanY
* FrequencyBodyGyroscopeMeanZ
* FrequencyBodyGyroscopeStdX
* FrequencyBodyGyroscopeStdY
* FrequencyBodyGyroscopeStdZ
* FrequencyBodyGyroscopeMeanFrequencyX
* FrequencyBodyGyroscopeMeanFrequencyY
* FrequencyBodyGyroscopeMeanFrequencyZ
* FrequencyBodyAccelerometerMagnitudeMean
* FrequencyBodyAccelerometerMagnitudeStd
* FrequencyBodyAccelerometerMagnitudeMeanFrequency
* FrequencyBodyAccelerometerJerkMagnitudeMean
* FrequencyBodyAccelerometerJerkMagnitudeStd
* FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
* FrequencyBodyGyroscopeMagnitudeMean
* FrequencyBodyGyroscopeMagnitudeStd
* FrequencyBodyGyroscopeMagnitudeMeanFrequency
* FrequencyBodyGyroscopeJerkMagnitudeMean
* FrequencyBodyGyroscopeJerkMagnitudeStd
* FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
