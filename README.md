

# Getting and Cleaning Data Project

## run_analysis.R

The cleanup script (run_analysis.R) does the following:



1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Running the script

Requires reshape2 

To run the script, source `run_analysis.R`. After running, you will see the following output as the script works:

* `Reading data sets
* `STR - checking the variables for numeric
* `Change X_test and X_train to numeric data frames from character
* `Add the feature labels to X_test
* `Change Y_test labels to include human readable Activity
* `bind X_teat and Y_test now properly labeled
* `repeat the process for respective train txt files
* `combine XY_test and XY_ train to form completed tidy data set
* `completed tidy data set has activity labels added
* `ONLY mean and std metrics extracted 
* `New data.frame created based on these extracted metrics 
* `Creates a second independent tidy data set with the average of each variable for each activity and each subject 


## Process

1. Read in text files
2. Convert character data to numeric in X-Test and X_train
3. label X-Test with the 561 Features
4. Label Y Test V1 as Activity
5. using cBind combine X_test and Y_test
6. Add subject 
7. Repeat steps 3 to 6 for Train data
8. bind the two XY_Train & XY_Test together creating complete data set
9.  NOTE 3rd request of project here Uses descriptive activity names to name the activities in the data set 
10. The second request of project Extracts only the measurements on the mean and standard deviation for each measurement
11. Using the extracted elements create a data set that has only the mean & std variables
12. Creates a second independent tidy data set with the average of each variable for each activity and each subject from the set with just mean and std
13. Write the clean dataset to disk 

## Clean Data set

The resulting clean dataset is exported to home directory as Second_Tidy_Averages

