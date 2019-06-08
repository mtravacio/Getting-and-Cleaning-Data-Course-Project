# Code Book for Getting and cleaning data Course project

This code book describes the data, variables and transformations applied to a dataset on human activity obtained
through the use of Smartphones. 

## 1. Data
The original dataset was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of the original datased can be obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Briefly, A group of 30 volunteers aged 19 to 48 years performed six activities while wearing a samartphone Samsung Galaxy S II on the waist:
- walking  
- walking upstairs  
- walking downstairs  
- sitting  
- standing  
- laying  

This smartphne has an accelerometer and a gyroscope embedded to capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The obtained dataset has been randomly partitioned into two sets:
- training data (70% of the volunteers)  
- test data (30% of the volunteers)

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

After transformations to clean up the data, a final dataset was stored in the **tidy_data.txt** file. The first row of this file contains the variable names, subsequent rows correspond to values of each observation for a given subject and activity.

## 2. Variables in the final dataset (tidy_data.txt)
**subject** Numeric subject identification, from 1 to 30.

**activity** Type of activity performed by each subject:
- WALKING: subject was walking  
- WALKING_UPSTAIRS: subject was walking upstairs  
- WALKING_DOWNSTAIRS: subject was walking downstairs  
- SITTING: subject was sitting  
- STANDING: subject was standing  
- LAYING: sugjects was laying  

The original dataset contained coded varible names that were relabeled to made their names more descriptive.
Variables are either the mean of the original values, expressed as "mean()" or the standard deviation, expressed as "std()".  
Each posible measurement is provied in a 3 axial model: -X, -Y, -Z
__1- Time domain variables begin with "time":__  
Signal based on the body of the participant:  
timeBodyAccelerometer-mean()-X, -Y, -Z and timeBodyAccelerometer-std()-X, -Y, -Z  
timeBodyAccelerometerJerk-mean()-X, -Y, -Z and timeBodyAccelerometerJerk-std()-X, -Y, -Z; Jerk indicates a sudden movement of the subject  
timeBodyGyroscope-mean()-X, -Y, -Z and timeBodyGyroscope-std()-X, -Y, -Z; Gyroscope indicates that the signal was captured with the smartphone gyroscope   

Signal based on the gravity  
timeGravityAccelerometer-mean()-X, -Y, -Z  
timeGravityAccelerometer-std()-X, -Y, -Z  

__2- Frequency domain varibles begin with "frequency":__  



## 3. Transformation
1- Merges the training and the test sets to create one data set.
2- Extracts only the measurements on the mean and standard deviation for each measurement.
3- Uses descriptive activity names to name the activities in the data set
4- Appropriately labels the data set with descriptive variable names.
5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
