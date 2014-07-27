## Required packages
require(reshape2)

### Read in the test files
## Data should be unzipped in the script working directory use stringAsFactors =Flase to ensure no Factors 
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", dec=",", quote="\"",stringsAsFactors=FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
features_1 <- read.table("UCI HAR Dataset/features_1.txt", quote="\"")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", dec=",", quote="\"",stringsAsFactors=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
## Check that the two dataframes containing numeric data are in fact numeric - str reveals they are not
str(X_test) 
str(X_train)

## Convert character data to  Data numeric
X_test <- data.frame(lapply(X_test, as.numeric))
X_train <- data.frame(lapply(X_train, as.numeric))


## label X-Test with the 561 Features
Feature_X_test<-setNames(X_test, features_1$V2)
names(Feature_X_test)
dim(Feature_X_test)

##Label Y Test
Activity = y_test$V1
names(y_test)

## Combine X & Y Test
XY_test <-cbind(Feature_X_test, Activity)
names(XY_test)
head(XY_test)
SubjectID =subject_test$V1
Complete_Test <-cbind(XY_test, SubjectID)
head(Complete_Test)

## Repeat Process for the Training data sets 
Feature_X_train<-setNames(X_train, features_1$V2)
names(Feature_X_train)
##Label Y Train
Activity = y_train$V1
names(y_train)
## Combine X & Y train
XY_train <-cbind(Feature_X_train, Activity)
names(XY_train)
head(XY_train)
SubjectID =subject_train$V1
Complete_Train <-cbind(XY_train, SubjectID)
head(Complete_Train)

## Bind the two completed data frames into one matrix 
## Request 1 of Project: Merges the training and the test sets to create one data set
Tidy_complete <-rbind(Complete_Test, Complete_Train)
head(Tidy_complete)
dim(Tidy_complete)

## Replace the numeric Code of Activity with human readable words 
## NOTE 3rd request of project here Uses descriptive activity names to name the activities in the data set 
Tidy_complete$Activity <- c("1" = "Walking", "2" = "Walking Upstairs", "3"= "Walking Downstairs", "4" = "Sitting", "5" = "Standing", "6" = "Laying")[Tidy_complete$Activity]                 

## SECOND request of project Extracts only the measurements on the mean and standard deviation for each measurement. 
extracted_elements <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()", "Activity" ,"SubjectID")
Limited_tidy_data <- Tidy_complete[extracted_elements]
dim(Limited_tidy_data)## Checking on dim of new data Frame
names(Limited_tidy_data) ## Checking names of new data frame
str(Limited_tidy_data) ## numeric values remain 

# Creates a second independent tidy data set with the average of each variable for each activity and each subject. 
Second_Tidy_Averages <- aggregate(Limited_tidy_data [1:66], by=list(Limited_tidy_data$SubjectID, Limited_tidy_data$Activity), FUN = mean, na.rm=TRUE)
names(Second_Tidy_Averages)
write.csv(Second_Tidy_Averages, file= "Second_Tidy_Averages.csv")
