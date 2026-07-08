### Coursera Data Science
### Getting & Cleaning Data
### Week 4 Programming Assignmant
### Script Title: run_analysis.R
### Date: 7/8/26

##Load Packages##

library(dplyr)

##Load Data into R STudio##
#Reference Files
features <- read.table("Getting & Cleaning Data/UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("Getting & Cleaning Data/UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
#Test Files
subject_test <- read.table("Getting & Cleaning Data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("Getting & Cleaning Data/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("Getting & Cleaning Data/UCI HAR Dataset/test/y_test.txt", col.names = "code")
#Train Files
subject_train <- read.table("Getting & Cleaning Data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("Getting & Cleaning Data/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("Getting & Cleaning Data/UCI HAR Dataset/train/y_train.txt", col.names = "code")


##Merge the training and test sets to create a single dataset##
x_merged <- rbind(x_train, x_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)
merged_data <- cbind(subject_merged, x_merged, y_merged)


## Extract only the measurements on the mean and standard deviation for each measurement.##
mean_sd_merged_data <- select(.data = merged_data, subject, code, contains("mean"), contains("std"))

##Uses descriptive activity names to name the activities in the data set
mean_sd_merged_data$code <- activities[mean_sd_merged_data$code, 2]

##Appropriately labels the data set with descriptive variable names.
names(mean_sd_merged_data)[2] = "activity"
names(mean_sd_merged_data)<-gsub("Acc", "Accelerometer", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("Gyro", "Gyroscope", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("BodyBody", "Body", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("Mag", "Magnitude", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("^t", "Time", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("^f", "Frequency", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("tBody", "TimeBody", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("-mean()", "Mean", names(mean_sd_merged_data), ignore.case = TRUE)
names(mean_sd_merged_data)<-gsub("-std()", "STD", names(mean_sd_merged_data), ignore.case = TRUE)
names(mean_sd_merged_data)<-gsub("-freq()", "Frequency", names(mean_sd_merged_data), ignore.case = TRUE)
names(mean_sd_merged_data)<-gsub("angle", "Angle", names(mean_sd_merged_data))
names(mean_sd_merged_data)<-gsub("gravity", "Gravity", names(mean_sd_merged_data))

##From the data set in step 4, creates a second, independent tidy data set with the ##
##average of each variable for each activity and each subject.##
TidyData <- mean_sd_merged_data %>%
  group_by(subject, activity) %>%
  summarize_all(funs(mean))
write.table(TidyData, "TidyData.txt", row.name=FALSE)






