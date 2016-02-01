## LOAD DATA
testdata <- read.table("X_test.txt",sep = "",quote = "",header = FALSE)
testlabels <- read.table("y_test.txt",sep = "",quote = "",header = FALSE)
testsubjects <- read.table("subject_test.txt",sep = "",quote = "",header = FALSE)
traindata <- read.table("X_train.txt",sep = "",quote = "",header = FALSE)
trainlabels <- read.table("y_train.txt",sep = "",quote = "",header = FALSE)
trainsubjects <- read.table("subject_train.txt",sep = "",quote = "",header = FALSE)
features <- read.table("features.txt",sep = "",quote = "",header = FALSE)

## CODE THE DATA WITH FEATURES, ACTIVITY LABELS, AND SUBJECTS
colnames(testdata) <- features$V2
colnames(testlabels) <- "label"
colnames(testsubjects) <- "subject"
testdata_coded <- cbind(testlabels,testdata)
testdata_coded <- cbind(testsubjects,testdata_coded)
colnames(traindata) <- features$V2
colnames(trainlabels) <- "label"
colnames(trainsubjects) <- "subject"
traindata_coded <- cbind(trainlabels,traindata)
traindata_coded <- cbind(trainsubjects,traindata_coded)

## APPEND TRAINING DATA TO THE TEST DATA TO CREATE ONE DATA SET, "merged_tt"
merged_tt <- rbind(testdata_coded,traindata_coded)

## EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
##    TO FORM A NEW DATA SET, "mean_std_data"
mean_std_data <- merged_tt[,c(grep("subject|label|.*mean\\(\\).*|.*std().*", names(merged_tt)))]

## USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN "mean_std_data"
mean_std_data$label <- as.factor(mean_std_data$label)
levels(mean_std_data$label) <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

## APPROPRIATELY LABEL "mean_std_data" WITH DESCRIPTIVE VARIABLE NAMES
colnames(mean_std_data) <- c("subject","activity","time-body_accel-mean-x","time-body_accel-mean-y","time-body_accel-mean-z","time-body_accel-stdev-x","time-body_accel-stdev-y","time-body_accel-stdev-z","time-gravity_accel-mean-x","time-gravity_accel-mean-y","time-gravity_accel-mean-z","time-gravity_accel-stdev-x","time-gravity_accel-stdev-y","time-gravity_accel-stdev-z","time-change_in_body_accel-mean-x","time-change_in_body_accel-mean-y","time-change_in_body_accel-mean-z","time-change_in_body_accel-stdev-x","time-change_in_body_accel-stdev-y","time-change_in_body_accel-stdev-z","time-body_angular_velocity-mean-x","time-body_angular_velocity-mean-y","time-body_angular_velocity-mean-z","time-body_angular_velocity-stdev-x","time-body_angular_velocity-stdev-y","time-body_angular_velocity-stdev-z","time-change_in_body_angular_velocity-mean-x","time-change_in_body_angular_velocity-mean-y","time-change_in_body_angular_velocity-mean-z","time-change_in_body_angular_velocity-stdev-x","time-change_in_body_angular_velocity-stdev-y","time-change_in_body_angular_velocity-stdev-z","time-magnitude_of_body_accel-mean","time-magnitude_of_body_accel-stdev","time-magnitude_of_gravity_accel-mean","time-magnitude_of_gravity_accel-stdev","time-magnitude_of_change_in_body_accel-mean","time-magnitude_of_change_in_body_accel-stdev","time-magnitude_of_body_angular_velocity-mean","time-magnitude_of_body_angular_velocity-stdev","time-magnitude_of_change_in_body_angular_velocity-mean","time-magnitude_of_change_in_body_angular_velocity-stdev","freq-body_accel-mean-x","freq-body_accel-mean-y","freq-body_accel-mean-z","freq-body_accel-stdev-x","freq-body_accel-stdev-y","freq-body_accel-stdev-z","freq-change_in_body_accel-mean-x","freq-change_in_body_accel-mean-y","freq-change_in_body_accel-mean-z","freq-change_in_body_accel-stdev-x","freq-change_in_body_accel-stdev-y","freq-change_in_body_accel-stdev-z","freq-body_angular_velocity-mean-x","freq-body_angular_velocity-mean-y","freq-body_angular_velocity-mean-z","freq-body_angular_velocity-stdev-x","freq-body_angular_velocity-stdev-y","freq-body_angular_velocity-stdev-z","freq-magnitude_of_body_accel-mean","freq-magnitude_of_body_accel-stdev","freq-magnitude_of_change_in_body_accel-mean","freq-magnitude_of_change_in_body_accel-stdev","freq-magnitude_of_body_angular_velocity-mean","freq-magnitude_of_body_angular_velocity-stdev","freq-magnitude_of_change_in_body_angular_velocity-mean","freq-magnitude_of_change_in_body_angular_velocity-stdev")

## CREATE A SECOND, INDEPENDENT TIDY DATA SET, "summary_means", WITH THE AVERAGE OF EACH
##    VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT IN "mean_std_data"
library(stats)  ## MAY ALREADY BE LOADED BUT NOT IN BASE R 
library(dplyr)
mean_std_data$subject <- as.factor(mean_std_data$subject)
summary_means <- aggregate(x = mean_std_data[,3:68], by = list(mean_std_data$subject,mean_std_data$activity),FUN = "mean")
colnames(summary_means)[1:2] <- c("subject","activity")
summary_means <- arrange(summary_means, subject, activity)

