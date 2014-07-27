Requires reshape2 

All naming of data frames remained consistent with the names as per the UCI data

For example

dataframe X_test reflects X_test.txt

The only exception is 

features_1 <- read.table("UCI HAR Dataset/features_1.txt", quote="\"")

Which drew from feature_1.txt rather than features.txt to clearly distinguish it from the latter Feature_X_test

Each file was imported 
StringAsFactor = FLASE to print the importing of numerics as factors 

Str
Dim
names

Used throughout as a preference of this coder to ensure code is behaving as expected
X_Test & X_train where conveyed from characters to numbers 

Y_Test had the human readable label “Activity” added 

XY_test- is the combination of X_test & Y_test 

Feature labels were added to XY_Test 

The process was repeated for X_train & y_train

Both XY_test & XY_train where combined

Tidy_Complete is a data frame- derived from combining X_test, y_test, X_train, y_train, subject_test, subject_train, features_1 and activity_labels from UCI HAR dataset 

Feature_X_Test - data frame with X_test columns relabelled 
Feature_X_train- data frame with X_test columns relabelled

Limited_tidy_data is a data frame which has only the measurements on the mean and standard deviation for each measurement. from Tidy_complete

Second_Tidy_Averages is a data frame which is a tidy data set with the average of each variable for each activity and each subject.