# Code Book for Getting & Cleaning Data Project July 2014

# ID Fields

*`SubjectID` - The participants in the study’s identifier or ID
*`Activity` - the label of the activity at time of measurements recording 

## Extracted Features from data frame Tidy Complete i.e. all 8 original text files combined

*  `tBodyAcc-mean()-X`
*  `tBodyAcc-mean()-Y`
*  `tBodyAcc-mean()-Z`
*  `tBodyAcc-std()-X`
*  `tBodyAcc-std()-Y`
*  `tBodyAcc-std()-Z`
*  `tGravityAcc-mean()-X`
*  `tGravityAcc-mean()-Y`
*  `tGravityAcc-mean()-Z`
*  `tGravityAcc-std()-X`
*  `tGravityAcc-std()-Y`
*  `tGravityAcc-std()-Z`
*  `tBodyAccJerk-mean()-X`
*  `tBodyAccJerk-mean()-Y`
*  `tBodyAccJerk-mean()-Z`
*  `tBodyAccJerk-std()-X`
*  `tBodyAccJerk-std()-Y`
*  `tBodyAccJerk-std()-Z`
*  `tBodyGyro-mean()-X`
*  `tBodyGyro-mean()-Y`
*  `tBodyGyro-mean()-Z`
*  `tBodyGyro-std()-X`
*  `tBodyGyro-std()-Y`
*  `tBodyGyro-std()-Z`
*  `tBodyGyroJerk-mean()-X`
*  `tBodyGyroJerk-mean()-Y`
*  `tBodyGyroJerk-mean()-Z`
*  `tBodyGyroJerk-std()-X`
*  `tBodyGyroJerk-std()-Y`
*  `tBodyGyroJerk-std()-Z`
*  `tBodyAccMag-mean()`
*  `tBodyAccMag-std()`
*  `tGravityAccMag-mean()`
*  `tGravityAccMag-std()`
*  `tBodyAccJerkMag-mean()`
*  `tBodyAccJerkMag-std()`
*  `tBodyGyroMag-mean()`
*  `tBodyGyroMag-std()`
*  `tBodyGyroJerkMag-mean()`
*  `tBodyGyroJerkMag-std()`
*  `fBodyAcc-mean()-X`
*  `fBodyAcc-mean()-Y`
*  `fBodyAcc-mean()-Z`
*  `fBodyAcc-std()-X`
*  `fBodyAcc-std()-Y`
*  `fBodyAcc-std()-Z`
*  `fBodyAccJerk-mean()-X`
*  `fBodyAccJerk-mean()-Y`
*  `fBodyAccJerk-mean()-Z`
*  `fBodyAccJerk-std()-X`
*  `fBodyAccJerk-std()-Y`
*  `fBodyAccJerk-std()-Z`
*  `fBodyGyro-mean()-X`
*  `fBodyGyro-mean()-Y`
*  `fBodyGyro-mean()-Z`
*  `fBodyGyro-std()-X`
*  `fBodyGyro-std()-Y`
*  `fBodyGyro-std()-Z`
*  `fBodyAccMag-mean()`
*  `fBodyAccMag-std()`
*  `fBodyBodyAccJerkMag-mean()`
*  `fBodyBodyAccJerkMag-std()`
*  `fBodyBodyGyroMag-mean()`
*  `fBodyBodyGyroMag-std()`
*  `fBodyBodyGyroJerkMag-mean()`
*  `fBodyBodyGyroJerkMag-std()`
*  `Activity`
*  `SubjectID`

## extracted_elements vector
extracted_elements <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()", "Activity" ,"SubjectID") 

### Activity - labeled assigned to numbers 

* `WALKING` (value `1`)
* `WALKING_UPSTAIRS` (value `2`)
* `WALKING_DOWNSTAIRS` (value `3`)
* `SITTING` (value `4`)
* `STANDING` (value `5`)
* `LAYING` (value `6`)

## activity vector

Tidy_complete$Activity <- c("1" = "Walking", "2" = "Walking Upstairs", "3"= "Walking Downstairs", "4" = "Sitting", "5" = "Standing", "6" = "Laying")[Tidy_complete$Activity]                 

## General information re: data frames

Tidy_Complete is a data frame- derived from combining X_test, y_test, X_train, y_train, subject_test, subject_train, features_1 and activity_labels from UCI HAR dataset 

Feature_X_Test - data frame with X_test columns relabelled 
Feature_X_train- data frame with X_test columns relabelled

Limited_tidy_data is a data frame which has only the measurements on the mean and standard deviation for each measurement. from Tidy_complete


Second_Tidy_Averages is a data frame which is a tidy data set with the average of each variable for each activity and each subject.