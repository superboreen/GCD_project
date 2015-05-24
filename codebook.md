# Codebook.

The data contained in the tidy data set are derived from data sourced from the UCI Machine Learning Repository here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data are derived from experiments involving 30 subjects engaging in one of six different activities while carrying a smartphone. The activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

As part of the analysis described in the accompanying readme file the full set of data was summarised down to a tidy data set that just contained average values for variables that represented mean and standard deviation measurements related to the activities. These average values are presented in the tidy data set for each subject and activity and variable combination.

The data in the tidy data set are as follows:

**subject** (integer) with a range of values between 1 and 30

**activity**  (factor) with six possible values of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

**variable** The name of the variable (see below for a listof the 86 varibles) for which an average was provided

**AvgValue** The average value of the variable for a particular subject and activity.

The 86 variables are as follows:

* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyAccMean,gravity)
* angle(tBodyGyroJerkMean,gravityMean)
* angle(tBodyGyroMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-meanFreq()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-meanFreq()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroMag-std()
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tGravityAccMag-mean()
* tGravityAccMag-std()