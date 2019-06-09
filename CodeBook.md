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

This smartphone has an accelerometer and a gyroscope embedded to capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
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

The original dataset contained coded variable names that were relabeled to made their names more descriptive.  
Features were normalized and bounded within [-1,1]. 
Some measurements are provied in as -X, -Y, -Z (used to denote 3-axial signals in the X, Y and Z directions).  
"Accelerometer" indicates that the signal was captured with the smartphone accelerometer. The units used for the accelerations (total and body) were 'g's (gravity of earth -> 9.80665 m/seg2).  
"Body" acceleration signal was obtained by subtracting the gravity from the total acceleration.  
"Gyroscope" indicates that the signal was captured with the smartphone gyroscope; the gyroscope units are rad/seg.  
"Jerk" is the rate of change of acceleration and it would indicate a sudden movement of the subject. Body linear acceleration and angular velocity were derived in time to obtain Jerk signals.  
"Magnitude" these three-dimensional signals were calculated using the Euclidean norm.  
Variables are either the mean of the original values, expressed as "mean" or the standard deviation, expressed as "standardDeviation".  
 

#### 1- Time domain variables begin with "time":  
**Signal based on the body of the participant:**  
- timeBodyAccelerometerMeanX, Y, Z and timeBodyAccelerometerStandardDeviationX, Y, Z  
- timeBodyAccelerometerJerkMeanX, Y, Z and timeBodyAccelerometerJerkStandardDeviationX, Y, Z  
- timeBodyGyroscopeMeanX, Y, Z and timeBodyGyroscopeStandardDeviationX, Y, Z  
- timeBodyGyroscopeJerkMeanX, Y, Z and timeBodyGyroscopeJerkStandardDeviationX, Y, Z  
- timeBodyAccelerometerMagnitudeMean and timeBodyAccelerometerMagnitudeStandardDeviation  
- timeBodyAccelerometerJerkMagnitudeMean and timeBodyAccelerometerJerkMagnitudeStandardDeviation  
- timeBodyGyroscopeMagnitudeMean and timeBodyGyroscopeMagnitudeStandardDeviation  
- timeBodyGyroscopeJerkMagnitudeMean and timeBodyGyroscopeJerkMagnitudeStandardDeviation  

**Signal based on the gravity**  
- timeGravityAccelerometerMeanX, Y, Z and timeGravityAccelerometerStandardDeviationX, Y, Z  
- timeGravityAccelerometerMagnitudeMean and timeGravityAccelerometerMagnitudeStandardDeviation  
  

  
#### 2- Frequency domain variables begin with "frequency":  
- frequencyBodyAccelerometerMeanX, Y, Z and frequencyBodyAccelerometerStandardDeviationX, Y, Z  
- frequencyBodyAccelerometerJerkMeanX, Y, Z and frequencyBodyAccelerometerJerkStandardDeviationX, Y, Z  
- frequencyBodyGyroscopeMeanX, Y, Z and frequencyBodyGyroscopeStandardDeviationX, Y, Z  
- frequencyBodyAccelerometerMeanFrequencyX, Y, Z  
- frequencyBodyAccelerometerJerkMeanFrequencyX, Y, Z  
- frequencyBodyGyroscopeMeanFrequencyX, Y, Z  
- frequencyBodyAccelerometerMagnitudeMean and frequencyBodyAccelerometerMagnitudeStandardDeviation  
- frequencyBodyAccelerometerJerkMagnitudeMean and frequencyBodyAccelerometerJerkMagnitudeStandardDeviation  
- frequencyBodyGyroscopeMagnitudeMean and frequencyBodyGyroscopeMagnitudeStandardDeviation  
- frequencyBodyGyroscopeJerkMagnitudeMean and frequencyBodyGyroscopeJerkMagnitudeStandardDeviation  
- frequencyBodyAccelerometerMagnitudeMeanFrequency  
- frequencyBodyAccelerometerJerkMagnitudeMeanFrequency  
- frequencyBodyGyroscopeMagnitudeMeanFrequency  
- frequencyBodyGyroscopeJerkMagnitureMeanFrequency


## 3. Transformation
1- Merges the training and the test sets to create one data set.  
2- Extracts only the measurements on the mean and standard deviation for each measurement.  
3- Uses descriptive activity names to name the activities in the data set.  
4- Appropriately labels the data set with descriptive variable names.  
5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
Windows 10 x64 version 1803 (2018-07-10), R version 3.6.0 (2019-04-26), dplyr package version 0.8.0.1
