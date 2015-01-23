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

# 2. Loading labels for metrics