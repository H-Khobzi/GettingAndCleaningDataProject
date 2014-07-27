## setting the work directory on the test folder in order to read all the test data.
setwd("UCI HAR Dataset/test")

## reading all the test data into two separate tables.
test_data1 <- read.table("X_test.txt", stringsAsFactors=FALSE)
test_data0 <- read.table("subject_test.txt", stringsAsFactors=FALSE)
test_data0 <- cbind(test_data0, read.table("Y_test.txt", stringsAsFactors=FALSE))

## setting the work directory on the train folder in order to read all the test data.
setwd("../train")

## reading all the train data into two separate tables.
train_data1 <- read.table("X_train.txt", stringsAsFactors=FALSE)
train_data0 <- read.table("subject_train.txt", stringsAsFactors=FALSE)
train_data0 <- cbind(train_data0, read.table("Y_train.txt", stringsAsFactors=FALSE))

## combining all the data together.
complete_data1 <- rbind(test_data1, train_data1)
complete_data0 <- rbind(test_data0, train_data0)
colnames(complete_data0) <- c("subject", "activity_label")

## setting the work directory on the main folder in order to read features and activity labels.
setwd("..")

## reading the feaures and activity labels.
activity_labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
features <- read.table("features.txt", stringsAsFactors=FALSE)
colnames(complete_data1) <- features$V2
setwd("..")

## subsetting the required indices from all data. 
desired_features <- grep("mean|std", features$V2)
df_names <- features$V2[desired_features]

## replacing the activity_label values with their respective label.
library(plyr)
colnames(activity_labels)[2] <- "activity_label"
colnames(complete_data0)[2] <- "V1"
rep_table0 <- join(complete_data0, activity_labels, by = "V1")
rep_table1 <- rep_table0[,c(1, 3)]

## creating the tidy data set.
sub_table <- cbind(rep_table1, subset(complete_data1, select = df_names))
tidy_data = aggregate(sub_table, by=list(activity_label=sub_table$activity_label, subject=sub_table$subject), mean)
tidy_data[,4] = NULL
tidy_data[,3] = NULL
write.table(tidy_data, file="./tidy_data.txt", sep="\t", row.names=FALSE)
