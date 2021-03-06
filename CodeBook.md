# TidyDataCourseProject Code Book

The Tidy Data Set is an independent tidy data set created for an assignment for the Coursera Clean Data Course. The details of the assignment are in the Readme.md file.

The data set contains the average of each selected measurement for each activity and each subject. There are 6 activities X 30 subjects = 180 observations (rows) for each of the 86 selected measurements (columns). 

The names of the mean measurement columns are based on the names of the measurements for the raw data, but they have been transformed as follows:
* brackets '(' and ')' were eliminated
* other illegal column name characters such as ',' and '-' were replace by '.'
* to indicate that these columns are averages, not the original data set, each measurement name was prepended with 'Means.Of..'

Please consult the original raw data's codebook for details of what each measurement represents.

The column names are as follows:

* GroupedBy.1.Subject
* GroupedBy.2.Activity
* Means.Of..tBodyAcc.mean.X
* Means.Of..tBodyAcc.mean.Y
* Means.Of..tBodyAcc.mean.Z
* Means.Of..tBodyAcc.std.X
* Means.Of..tBodyAcc.std.Y
* Means.Of..tBodyAcc.std.Z
* Means.Of..tGravityAcc.mean.X
* Means.Of..tGravityAcc.mean.Y
* Means.Of..tGravityAcc.mean.Z
* Means.Of..tGravityAcc.std.X
* Means.Of..tGravityAcc.std.Y
* Means.Of..tGravityAcc.std.Z
* Means.Of..tBodyAccJerk.mean.X
* Means.Of..tBodyAccJerk.mean.Y
* Means.Of..tBodyAccJerk.mean.Z
* Means.Of..tBodyAccJerk.std.X
* Means.Of..tBodyAccJerk.std.Y
* Means.Of..tBodyAccJerk.std.Z
* Means.Of..tBodyGyro.mean.X
* Means.Of..tBodyGyro.mean.Y
* Means.Of..tBodyGyro.mean.Z
* Means.Of..tBodyGyro.std.X
* Means.Of..tBodyGyro.std.Y
* Means.Of..tBodyGyro.std.Z
* Means.Of..tBodyGyroJerk.mean.X
* Means.Of..tBodyGyroJerk.mean.Y
* Means.Of..tBodyGyroJerk.mean.Z
* Means.Of..tBodyGyroJerk.std.X
* Means.Of..tBodyGyroJerk.std.Y
* Means.Of..tBodyGyroJerk.std.Z
* Means.Of..tBodyAccMag.mean
* Means.Of..tBodyAccMag.std
* Means.Of..tGravityAccMag.mean
* Means.Of..tGravityAccMag.std
* Means.Of..tBodyAccJerkMag.mean
* Means.Of..tBodyAccJerkMag.std
* Means.Of..tBodyGyroMag.mean
* Means.Of..tBodyGyroMag.std
* Means.Of..tBodyGyroJerkMag.mean
* Means.Of..tBodyGyroJerkMag.std
* Means.Of..fBodyAcc.mean.X
* Means.Of..fBodyAcc.mean.Y
* Means.Of..fBodyAcc.mean.Z
* Means.Of..fBodyAcc.std.X
* Means.Of..fBodyAcc.std.Y
* Means.Of..fBodyAcc.std.Z
* Means.Of..fBodyAcc.meanFreq.X
* Means.Of..fBodyAcc.meanFreq.Y
* Means.Of..fBodyAcc.meanFreq.Z
* Means.Of..fBodyAccJerk.mean.X
* Means.Of..fBodyAccJerk.mean.Y
* Means.Of..fBodyAccJerk.mean.Z
* Means.Of..fBodyAccJerk.std.X
* Means.Of..fBodyAccJerk.std.Y
* Means.Of..fBodyAccJerk.std.Z
* Means.Of..fBodyAccJerk.meanFreq.X
* Means.Of..fBodyAccJerk.meanFreq.Y
* Means.Of..fBodyAccJerk.meanFreq.Z
* Means.Of..fBodyGyro.mean.X
* Means.Of..fBodyGyro.mean.Y
* Means.Of..fBodyGyro.mean.Z
* Means.Of..fBodyGyro.std.X
* Means.Of..fBodyGyro.std.Y
* Means.Of..fBodyGyro.std.Z
* Means.Of..fBodyGyro.meanFreq.X
* Means.Of..fBodyGyro.meanFreq.Y
* Means.Of..fBodyGyro.meanFreq.Z
* Means.Of..fBodyAccMag.mean
* Means.Of..fBodyAccMag.std
* Means.Of..fBodyAccMag.meanFreq
* Means.Of..fBodyBodyAccJerkMag.mean
* Means.Of..fBodyBodyAccJerkMag.std
* Means.Of..fBodyBodyAccJerkMag.meanFreq
* Means.Of..fBodyBodyGyroMag.mean
* Means.Of..fBodyBodyGyroMag.std
* Means.Of..fBodyBodyGyroMag.meanFreq
* Means.Of..fBodyBodyGyroJerkMag.mean
* Means.Of..fBodyBodyGyroJerkMag.std
* Means.Of..fBodyBodyGyroJerkMag.meanFreq
* Means.Of..angletBodyAccMean.gravity
* Means.Of..angletBodyAccJerkMean.gravityMean
* Means.Of..angletBodyGyroMean.gravityMean
* Means.Of..angletBodyGyroJerkMean.gravityMean
* Means.Of..angleX.gravityMean
* Means.Of..angleY.gravityMean
* Means.Of..angleZ.gravityMean

