# Getting-and-cleaning-data-Course-project

One of the most exciting areas in all of data science right now is wearable computing - see for example example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data used in this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Project steps
- Original data was downloaded and unziped. Data was read using read.table().  
- Training and test sets were merged to create one dataset using rbind() and cbind().  
- Measurements on the mean and standard deviation for each measurement were extracted.  
- Activities and variables were properly named in the dataset and special characters were removed using gsub().  
- A final tidy dataset with the average of each variable for each activity and each subject was created and saved as “tidy_data.txt”.  
  
This project was completed with Windows 10 x64 version 1803 (2018-07-10), R version 3.6.0 (2019-04-26), and dplyr package version 0.8.0.1


## This repository contains the following files
- **README.md:** Provides an overview of Getting and cleaning data Course project  
- **CodeBook.md:** This is the code book, which describes the contents of the dataset  
- **run_analysis.R:** This is the R script that was used to create the dataset  
- **tidy_data.txt:** This file contains the final dataset  








