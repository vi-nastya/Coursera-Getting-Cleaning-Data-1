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

# 4. Loading labels for metrics
feature_names <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, 
                            sep = "", stringsAsFactors = FALSE)
names(data) <- c("subject", "activityCode", feature_names$V2)

# 2. Subset the data
data_subset <- data[,c("subject", "activityCode", 
                       grep("[mM][eE][aA][nN]", names(data), value = TRUE), 
                       grep("[sS][tT][dD]", names(data), value = TRUE))]

# 3. Replace activity names
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             header = FALSE, sep = "", stringsAsFactors = FALSE)

for(id in 1:nrow(activity_names)){
  data_subset$activity[data_subset$activityCode %in% activity_names$V1[id]] <- activity_names$V2[id]
}


# 5. Computing average
aggdata <- aggregate(data_subset[, 3:(length(names(data_subset)) - 1)], 
                     by=(data_subset$subject, data_subset$activity), 
                     FUN=avg, na.rm=TRUE)

data_subset[, 3:length(names(data_subset))]