##Data dictionary.

*subject*

*activity* 
  
  Type of activity
  
      1. WALKING
      
      2. WALKING_UPSTAIRS
      
      3. WALKING_DOWNSTAIRS
      
      4. SITTING
      
      5. STANDING
      
      6. LAYING
      
*features*

The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time 
to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude 
of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Features are normalized and bounded within [-1,1].

The tidy data contains the average of each of the following variables for each activity and each subject:

2. "tBodyAcc-mean()-X"
2. "tBodyAcc-mean()-Y"
2. "tBodyAcc-mean()-Z"
2. "tGravityAcc-mean()-X"
2. "tGravityAcc-mean()-Y"
2. "tGravityAcc-mean()-Z"
2. "tBodyAccJerk-mean()-X"
2. "tBodyAccJerk-mean()-Y"
2. "tBodyAccJerk-mean()-Z"
2. "tBodyGyro-mean()-X"
2. "tBodyGyro-mean()-Y"
2. "tBodyGyro-mean()-Z"
2. "tBodyGyroJerk-mean()-X"
2. "tBodyGyroJerk-mean()-Y"
2. "tBodyGyroJerk-mean()-Z"
2. "tBodyAccMag-mean()"
2. "tGravityAccMag-mean()"
2. "tBodyAccJerkMag-mean()"
2. "tBodyGyroMag-mean()"
2. "tBodyGyroJerkMag-mean()"
2. "fBodyAcc-mean()-X"
2. "fBodyAcc-mean()-Y"
2. "fBodyAcc-mean()-Z"
2. "fBodyAccJerk-mean()-X"
2. "fBodyAccJerk-mean()-Y"
2. "fBodyGyro-mean()-X"
2. "fBodyGyro-mean()-Y"
2. "fBodyGyro-mean()-Z"
2. "fBodyAccMag-mean()"
2. "fBodyBodyAccJerkMag-mean()"
2. "fBodyBodyGyroMag-mean()"
2. "fBodyBodyGyroJerkMag-mean()"
2. "tBodyAcc-std()-X"
2. "tBodyAcc-std()-Y"
2. "tBodyAcc-std()-Z"
2. "tGravityAcc-std()-X"
2. "tGravityAcc-std()-Y"
2. "tGravityAcc-std()-Z"
2. "tBodyAccJerk-std()-X"
2. "tBodyAccJerk-std()-Y"
2. "tBodyAccJerk-std()-Z"
2. "tBodyGyro-std()-X"
2. "tBodyGyro-std()-Y"
2. "tBodyGyro-std()-Z"
2. "tBodyGyroJerk-std()-X"
2. "tBodyGyroJerk-std()-Y"
2. "tBodyGyroJerk-std()-Z"
2. "tBodyAccMag-std()"
2. "tGravityAccMag-std()"
2. "tBodyAccJerkMag-std()"
2. "tBodyGyroMag-std()"
2. "tBodyGyroJerkMag-std()"
1. "fBodyAcc-std()-X"
2. "fBodyAcc-std()-Y"
1. "fBodyAcc-std()-Z"
1. "fBodyAccJerk-std()-X"
2. "fBodyAccJerk-std()-Y"
2. "fBodyAccJerk-std()-Z"
1. "fBodyGyro-std()-X"
1. "fBodyGyro-std()-Y"
2. "fBodyGyro-std()-Z"
1. "fBodyAccMag-std()"
1. "fBodyBodyAccJerkMag-std()"
1. "fBodyBodyGyroMag-std()"
1. "fBodyBodyGyroJerkMag-std()"
