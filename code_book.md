Code Book for Tidy Dataset
=============================
Training and the test sets were merged to create one data set.

From "features.txt" list of indices corresponding to variables descriving mean values and standard deviations. This was done by selecting variables which names contain "mean" or "std". Only the measurements on the mean and standard deviation for each measurement were extracted from both training and test data tables and combined into a single table (also including columns with corresponding subject ids and activity labels).

Each activity label was replaced with corresponding activity name from "activity_labels.txt".

A second dataset with the average of each variable for each activity and each subject was created. The variables of this dataset are including:

* 'subject' - The participant ID
* 'activity_label' - The label of the activity performed by participant during the measurements
* 'tBodyAcc-mean()-X' - name of column 3
* 'tBodyAcc-mean()-Y' - name of column 4
* 'tBodyAcc-mean()-Z' - name of column 5
* 'tBodyAcc-std()-X' - name of column 6
* 'tBodyAcc-std()-Y' - name of column 7
* 'tBodyAcc-std()-Z' - name of column 8
* 'tGravityAcc-mean()-X' - name of column 43
* 'tGravityAcc-mean()-Y' - name of column 44
* 'tGravityAcc-mean()-Z' - name of column 45
* 'tGravityAcc-std()-X' - name of column 46
* 'tGravityAcc-std()-Y' - name of column 47
* 'tGravityAcc-std()-Z' - name of column 48
* 'tBodyAccJerk-mean()-X' - name of column 83
* 'tBodyAccJerk-mean()-Y' - name of column 84
* 'tBodyAccJerk-mean()-Z' - name of column 85
* 'tBodyAccJerk-std()-X' - name of column 86
* 'tBodyAccJerk-std()-Y' - name of column 87
* 'tBodyAccJerk-std()-Z' - name of column 88
* 'tBodyGyro-mean()-X' - name of column 123
* 'tBodyGyro-mean()-Y' - name of column 124
* 'tBodyGyro-mean()-Z' - name of column 125
* 'tBodyGyro-std()-X' - name of column 126
* 'tBodyGyro-std()-Y' - name of column 127
* 'tBodyGyro-std()-Z' - name of column 128
* 'tBodyGyroJerk-mean()-X' - name of column 163
* 'tBodyGyroJerk-mean()-Y' - name of column 164
* 'tBodyGyroJerk-mean()-Z' - name of column 165
* 'tBodyGyroJerk-std()-X' - name of column 166
* 'tBodyGyroJerk-std()-Y' - name of column 167
* 'tBodyGyroJerk-std()-Z' - name of column 168
* 'tBodyAccMag-mean()' - name of column 203
* 'tBodyAccMag-std()' - name of column 204
* 'tGravityAccMag-mean()' - name of column 216
* 'tGravityAccMag-std()' - name of column 217
* 'tBodyAccJerkMag-mean()' - name of column 229
* 'tBodyAccJerkMag-std()' - name of column 230
* 'tBodyGyroMag-mean()' - name of column 242
* 'tBodyGyroMag-std()' - name of column 243
* 'tBodyGyroJerkMag-mean()' - name of column 255
* 'tBodyGyroJerkMag-std()' - name of column 256
* 'fBodyAcc-mean()-X' - name of column 268
* 'fBodyAcc-mean()-Y' - name of column 269
* 'fBodyAcc-mean()-Z' - name of column 270
* 'fBodyAcc-std()-X' - name of column 271
* 'fBodyAcc-std()-Y' - name of column 272
* 'fBodyAcc-std()-Z' - name of column 273
* 'fBodyAccJerk-mean()-X' - name of column 347
* 'fBodyAccJerk-mean()-Y' - name of column 348
* 'fBodyAccJerk-mean()-Z' - name of column 349
* 'fBodyAccJerk-std()-X' - name of column 350
* 'fBodyAccJerk-std()-Y' - name of column 351
* 'fBodyAccJerk-std()-Z' - name of column 352
* 'fBodyGyro-mean()-X' - name of column 426
* 'fBodyGyro-mean()-Y' - name of column 427
* 'fBodyGyro-mean()-Z' - name of column 428
* 'fBodyGyro-std()-X' - name of column 429
* 'fBodyGyro-std()-Y' - name of column 430
* 'fBodyGyro-std()-Z' - name of column 431
* 'fBodyAccMag-mean()' - name of column 505
* 'fBodyAccMag-std()' - name of column 506
* 'fBodyBodyAccJerkMag-mean()' - name of column 518
* 'fBodyBodyAccJerkMag-std()' - name of column 519
* 'fBodyBodyGyroMag-mean()' - name of column 531
* 'fBodyBodyGyroMag-std()' - name of column 532
* 'fBodyBodyGyroJerkMag-mean()' - name of column 544
* 'fBodyBodyGyroJerkMag-std()' - name of column 545
