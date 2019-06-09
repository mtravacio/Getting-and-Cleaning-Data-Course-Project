# Setting the stage, use "dplyr" package
library(dplyr)


# Getting original dataset
zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

download.file(zipURL, zipFile, mode = "wb")
unzip(zipFile)
Dirpath <- "UCI HAR Dataset"

# Reading data in original dataset
# 1- test data
subject_test <- read.table(file.path(Dirpath, "test", "subject_test.txt"))
x_test <- read.table(file.path(Dirpath, "test", "X_test.txt"))
y_test <- read.table(file.path(Dirpath, "test", "Y_test.txt"))
# 2- train data
subject_train <- read.table(file.path(Dirpath, "train", "subject_train.txt"))
x_train <- read.table(file.path(Dirpath, "train", "X_train.txt"))
y_train <- read.table(file.path(Dirpath, "train", "y_train.txt"))
# 3- activity labels
activity_labels <- read.table(file.path(Dirpath, "activity_labels.txt"))
# 4- features (without converting character variables to factors)
features <- read.table(file.path(Dirpath, "features.txt"), as.is = TRUE)

# Merging test and train data into one dataset
allData <- rbind(
        cbind(subject_test, x_test, y_test),
        cbind(subject_train, x_train, y_train))

# Assigning names to the collumns
colnames(allData) <- c("subject", features[, 2], "activity")

# Extracting measurements on the mean and standard deviation
mean_std <- grepl("subject|activity|mean|std", colnames(allData))
allData <- allData[, mean_std]

# Labeling the dataset with descriptive variable names
# 1- Changing activity code to activity name
allData$activity <- factor(allData$activity,
                           levels = activity_labels[, 1],
                           labels = activity_labels[, 2])
# 2- Adding descriptive variable names
names(allData) <- gsub("^t", "time", names(allData))
names(allData) <- gsub("^f", "frequency", names(allData))
names(allData) <- gsub("BodyBody", "Body", names(allData))
names(allData) <- gsub("Acc", "Accelerometer", names(allData))
names(allData) <- gsub("Gyro", "Gyroscope", names(allData))
names(allData) <- gsub("Mag", "Magnitude", names(allData))
names(allData) <- gsub("Freq", "Frequency", names(allData))
names(allData) <- gsub("std", "StandardDeviation", names(allData))
names(allData) <- gsub("mean", "Mean", names(allData))

# 3- Removing special characters
names(allData) <- gsub("-", "", names(allData))
names(allData) <- gsub("[(\\)]", "", names(allData))

# Creating a new tidy dataset with the average of each variable for each activity and each subject
meanData <- allData %>% 
                group_by(subject, activity) %>%
                summarize_all(list(mean))

# Saving tidy dataset
write.table(meanData, "tidy_data.txt", row.names = FALSE, quote = FALSE)

