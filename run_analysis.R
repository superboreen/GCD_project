# NAME : run_analysis.R ####

# LOAD PACKAGES ####

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}

if(!require(magrittr)){
  install.packages("magrittr")
  library(magrittr)
}

if(!require(reshape2)){ # for melt
  install.packages("reshape2")
  library(resshape2)
}

# TEST DATA ####

# Read the features data
features.test <- read.table("UCI HAR Dataset/test/X_test.txt")
# Read the features variable names
features <- read.table("UCI HAR Dataset/features.txt")
# Create a vector of feature names that can be used as column headers below
feature_names <- as.vector(features$V2)
# Change the column names to be the feature names
colnames(features.test) <- feature_names
# read the activity code data
activity_code.test <- read.table("UCI HAR Dataset/test/y_test.txt")
# change the activity code column name to "activity_code"
colnames(activity_code.test)[colnames(activity_code.test) == "V1"] <- "activity_code" 
# read the subject data
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
# change the subject data column name to "subject"
colnames(subject.test)[colnames(subject.test) == "V1"] <- "subject" 

df_test <- cbind(subject.test, activity_code.test, features.test)

# TRAIN DATA ####

# Read the features data
features.train <- read.table("UCI HAR Dataset/train/X_train.txt")
# Change the column names to be the feature names
colnames(features.train) <- feature_names
# read the activity code data
activity_code.train <- read.table("UCI HAR Dataset/train/y_train.txt")
# change the activity code column name to "activity_code"
colnames(activity_code.train)[colnames(activity_code.train) == "V1"] <- "activity_code" 
# read the subject data
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
# change the subject data column name to "subject"
colnames(subject.train)[colnames(subject.train) == "V1"] <- "subject" 

# column bind the subjec, activity and features data frames together
df_train <- cbind(subject.train, activity_code.train, features.train)
# row bind the test data and training data
data_set <- rbind(df_test, df_train)

# Read the activity labels.
activity_name <- read.table("UCI HAR Dataset/activity_labels.txt")
# Create a new data set by merging in the activity names
data_set2 <- merge(data_set, activity_name, by.x=c("activity_code"), by.y=c("V1"), all=TRUE) # *****

rm(data_set)  # clean up

# change the activity code column name from V2 to "activity"
colnames(data_set2)[colnames(data_set2) == "V2"] <- "activity" 

# Remove the activity code column
data_set2$activity_code <- NULL

# Melt the data down to subject and activity
data_set3 <- melt(data_set2, id = c("subject","activity"))

rm(data_set2) # clean up

# Subset down to mean and std dev variables
myvars=c('mean','std')
data_set4 <- data_set3[grep(paste(myvars, collapse='|'), data_set3$variable, ignore.case=TRUE),]

rm(data_set3) # clean up

# CREATE TIDY DATA SET

tidy_data_set <- data_set4  %>%
  group_by(subject, activity, variable) %>%
  summarize(
    AvgValue = mean(value)
  )

# write out the tidy data set to a file
write.table(tidy_data_set, file = "tidy_data_set.txt", sep = ",", row.name=FALSE)

# ENDS ####