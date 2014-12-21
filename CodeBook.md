
Introduction
------------
This is the Code Book for the "tidy_data.txt" data file produced by my "run_analysis.R" script.
The tidy_data.txt file contains a data table that is wide-form. The data table has 180 rows and 68 columns.

The first column is called "Subject" and contains the subjects of the analysis. There were 30 subjects, identified with numbers 1 through 30.

The second column is called "Activity" and contains the six different activities that the subjects participated in. See more detailed information about the activities below in the Data Dictionary.

The remaining 66 columns contain the averages of measurements on the mean or standard deviation of measurements for each unique subject-activity combination. See more detailed information about the variables being measured below in the Data Dictionary.

Here is an excerpt from the ReadMe text file of the original dataset, which explains in detail the experiments where the data was collected:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Data Dictionary
---------------
To help explain what the variables in this dataset mean, I am including an excerpt from the "features_info.txt" file contained in the original dataset, as it explains the variables best:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**Variable Name: Subject**
 - Column Number: 1
 - Variable Description: Subject of the study - there were 30 in total
 - Variable Values: 1 through 30

**Variable Name: Activity**
 - Column Number: 2
 - Variable Description: Activity the subject performed - each subject performed all six activities
 - Variable Values: STANDING, SITTING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

****For the following variables, I have grouped them into different categories to make this data dictionary more readable and concise. For each of the different categories, there are three axial measurements corresponding to the three axial directions (X, Y, and Z). The mean and standard deviation are applied to all three axial directions. This means that there are six total measurements for each category: the X-mean, the Y-mean, the Z-mean, the X-standard deviation, the Y-standard deviation, and the Z-standard deviation.****

**Variable Category Name: tBodyAcc**
 - Variable Category Description: Body Acceleration
 - Column Numbers: 3 through 8
 - Variable Names in this Category: tBodyAcc.mean.X, tBodyAcc.mean.Y, tBodyAcc.mean.Z, tBodyAcc.std.X, tBodyAcc.std.Y, tBodyAcc.std.Z

**Variable Category Name: tGravityAcc**
 -Variable Category Description: Gravity Acceleration
 -Column Numbers: 9 through 14
 - Variable Names in this Category: tGravityAcc.mean.X, tGravityAcc.mean.Y, tGravityAcc.mean.Z, tGravityAcc.std.X, 
tBodyAcc.std.Y, tBodyAcc.std.Z

**Variable Category Name: tBodyAccJerk**
 - Variable Category Description: Body Acceleration Jerk Signals
 - Column Numbers: 15 through 20
 - Variable Names in this Category: tBodyAccJerk.mean.X, tBodyAccJerk.mean.Y, tBodyAccJerk.mean.Z, tBodyAccJerk.std.X, tBodyAccJerk.std.Y, tBodyAccJerk.std.Z

**Variable Category Name: tBodyGyro**
 - Variable Category Description: Body Gyroscope
 - Column Numbers: 21 through 26
 - Variable Names in this Category: tBodyGyro.mean.X, tBodyGyro.mean.Y, tBodyGyro.mean.Z, tBodyGyro.std.X, tBodyGyro.std.Y, tBodyGyro.std.Z

**Variable Category Name: tBodyGyroJerk**
 - Variable Category Description: Body Gyroscope Jerk Signals
 - Column Numbers: 27 through 32
 - Variable Names in this Category: tBodyGyroJerk.mean.X, tBodyGyrJerk.mean.Y, tBodyGyroJerk.mean.Z, tBodyGyroJerk.std.X, tBodyGyroJerk.std.Y, tBodyGyroJerk.std.Z

****For the following variables, they were not measured on all three axes, so there are only two measurements for each category: the mean of all the measurements, and the standard deviation of all the measurements.***

**Variable Category Name: tBodyAccMag**
 - Variable Category Description: Body Acceleration Magnitude
 - Column Numbers: 33 through 34
 - Variable Names in this Category: tBodyAccMag.mean, tBodyAccMag.std

**Variable Category Name: tGravityAccMag**
 - Variable Category Description: Gravity Acceleration Magnitude
 - Column Numbers: 35 through 36
 - Variable Names in this Category: tGravityAccMag.mean, tGravityAccMag.std

**Variable Category Name: tBodyAccJerkMag**
 - Variable Category Description: Body Acceleration Jerk Signals Magnitude
 - Column Numbers: 37 through 38
 - Variable Names in this Category: tBodyAccJerkMag.mean, tBodyAccMag.std

**Variable Category Name: tBodyGyroMag**
 - Variable Category Description: Body Gyroscope Magnitude
 - Column Numbers: 39 through 40
 - Variable Names in this Category: tBodyGyroMag.mean, tBodyGyroMag.std

**Variable Category Name: tBodyGyroJerkMag**
 - Variable Category Description: Body Gyroscope Jerk Signals Magnitude
 - Column Numbers: 41 through 42
 - Variable Names in this Category: tBodyGyroJerkMag.mean, tBodyGyroJerkMag.std

****For the following variables, I am returning to the same system as earlier: creating categories of variables, where each category contains six "sub-variables": the X-mean, the Y-mean, the Z-mean, the X-standard deviation, the Y-standard deviation, and the Z-standard deviation.****

**Variable Category Name: fBodyAcc**
 - Variable Category Description: (frequency domain signals) Body Acceleration
 - Column Numbers: 43 through 48
 - Variable Names in this Category: fBodyAcc.mean.X, fBodyAcc.mean.Y, fBodyAcc.mean.Z, fBodyAcc.std.X, fBodyAcc.std.Y, fBodyAcc.std.Z

**Variable Category Name: fBodyAccJerk**
 - Variable Category Description: (frequency domain signals) Body Jerk Signals Acceleration
 - Column Numbers: 49 through 54
 - Variable Names in this Category: fBodyAccJerk.mean.X, fBodyAccJerk.mean.Y, fBodyAccJerk.mean.Z, fBodyAccJerk.std.X, fBodyAccJerk.std.Y, fBodyAccJerk.std.Z

**Variable Category Name: fBodyGyro**
 - Variable Category Description: (frequency domain signals) Body Gyroscope
 - Column Numbers: 55 through 60
 - Variable Names in this Category: fBodyGyro.mean.X, fBodyGyro.mean.Y, fBodyGyro.mean.Z, fBodyGyro.std.X, fBodyGyro.std.Y, fBodyGyro.std.Z

****For the following variables, I am returning to my earlier system of categories containing only two sub-variables (since these particular variables were not measured on all axes): the mean of all the measurements, and the standard deviation of all the measurements.***

**Variable Category Name: fBodyAccMag**
 - Variable Category Description:  (frequency domain signals) Body Acceleration Magnitude
 - Column Numbers: 61 through 62
 - Variable Names in this Category: fBodyAccMag.mean, fBodyAccMag.std

**Variable Category Name: fBodyBodyAccJerkMag**
 - Variable Category Description: (frequency domain signals) Body Acceleration Jerk Signals Magnitude
 - Column Numbers: 63 through 64
 - Variable Names in this Category: fBodyBodyAccJerkMag.mean, fBodyBodyAccJerkMag.std

**Variable Category Name: fBodyBodyGyroMag**
 - Variable Category Description: (frequency domain signals) Body Gyroscope Magnitude
 - Column Numbers: 65 through 66
 - Variable Names in this Category: tBodyBodyGyroMag.mean, tBodyBodyGyroMag.std

**Variable Category Name: fBodyBodyGyroJerkMag**
 -Variable Category Description: (frequency domain signals) Body Gyroscope Jerk Signals Magnitude
 - Column Numbers: 67 through 68
 - Variable Names in this Category: tBodyGyroJerkMag.mean, tBodyGyroJerkMag.std

> Written with [StackEdit](https://stackedit.io/).