## Course project for Getting and Cleaning Data
## Steps:
#1. Download and unzip the folder
#2. Read supporting data on features and activity labels
#3. Read train and test data
#4. Merge train and test data and add labels
#5. Create a dataset with the average of each variable for each activity and each subject

## Download and unzip the folder. Prior to that, check the working directory
zipfile <- "getdata_dataset.zip"
if (!file.exists(zipfile)){
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url, zipfile, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(zipfile) 
}

## Read supporting data
featuresNames <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
activityLabels[,2] <- as.character(activityLabels[,2])
featuresNames[,2] <- as.character(featuresNames[,2])

## Prepare a list of the columns containing mean and standard deviation
features <- grep(".*mean.*|.*std.*", featuresNames[,2]) # subset the relevant columns numbers containing mean and std
featuresLabels <- featuresNames[features,2] # prepare the column headings of the relevant column numbers
# replace certain signs/words combinations in the headings
featuresLabels <-gsub("Acc", "Accelerometer", featuresLabels)
featuresLabels <-gsub("Gyro", "Gyroscope", featuresLabels)
featuresLabels <-gsub("BodyBody", "Body", featuresLabels)
featuresLabels <-gsub("Mag", "Magnitude", featuresLabels)
featuresLabels <-gsub("^t", "Time", featuresLabels)
featuresLabels<-gsub("Freq", "Frequency", featuresLabels)
featuresLabels <-gsub("^f", "Frequency", featuresLabels)
featuresLabels <- gsub('-mean', 'Mean', featuresLabels) 
featuresLabels <- gsub('-std', 'Std', featuresLabels) 
featuresLabels <- gsub('[-()]', '', featuresLabels) 
featuresLabels <-gsub("angle", "Angle", featuresLabels)
featuresLabels <-gsub("gravity", "Gravity", featuresLabels)


## Read train data
train <- read.table("UCI HAR Dataset/train/X_train.txt")[features] #read only the relevant columns (containing mean and std)
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
# Combine train data in one file
train_all <- cbind(trainSubjects, trainActivities, train)
## Read test data
test <- read.table("UCI HAR Dataset/test/X_test.txt")[features] #read only the relevant columns (containing mean and std)
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
# Combine test data in one file
test_all <- cbind(testSubjects, testActivities, test)

## Merge datasets and add labels
allData <- rbind(train_all, test_all)
colnames(allData) <- c("subject", "activity", featuresLabels)
# convert the activity and subject columns into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

## Create a dataset with the average of each variable for each activity and each subject, output file tidy.txt
tidyData <- aggregate(. ~subject + activity, allData, mean)
tidyData <- tidyData[order(tidyData$subject, tidyData$activity),]
write.table(tidyData, file = "tidy.txt", row.names = FALSE, quote = FALSE)
