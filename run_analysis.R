library(dplyr)

# 1. Inputing data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")

data_train <- cbind(subject_train, y_train, X_train)
data_test <- cbind(subject_test, y_test, X_test)

data <- rbind(data_train, data_test)

# 2. Loading labels for metrics. Adding descriptive variable names
feature_names <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, 
                            sep = "", stringsAsFactors = FALSE)
names(data) <- c("subject", "activityCode", feature_names$V2)

# 3. Subsetting the data (extracting means and standard deviations for each measurement)
data_subset <- data[,c("subject", "activityCode", 
                       grep("-[mM][eE][aA][nN][(]", names(data), value = TRUE), 
                       grep("-[sS][tT][dD]", names(data), value = TRUE))]

# 4. Replacing activity names with strings
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             header = FALSE, sep = "", stringsAsFactors = FALSE)

for(id in 1:nrow(activity_names)){
  data_subset$activity[data_subset$activityCode %in% 
                         activity_names$V1[id]] <- activity_names$V2[id]
}


# 5. Computing average for each group and each subject, writing tidy data to a new file
aggdata <- aggregate(data_subset[, 3:(length(names(data_subset)) - 1)], 
                     by = list(data_subset$subject, data_subset$activity), 
                     FUN=mean, na.rm=TRUE)

names(aggdata) <- c("subject", "activity", names(aggdata)[3:length(aggdata)])


write.table(x = aggdata, file = "./tidy_data.txt", row.names = FALSE)