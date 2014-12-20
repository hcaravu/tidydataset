#Note: The below script assumes you have downloaded 
#and unzipped the relevant files (see the README.md in this
#same GitHub repo for more info). All the files should be
#in the same folder in the same working directory.

#In this R script, you will combine the training and test
#datasets. You will then extract only the measurements
#on the mean and standard deviation for each measurement.
#Next, you will label the columns in the dataset with
#appropriate and readable names. Then, you will create a
#second, independent dataset containing the averages of each
#variable for each subject-activity combination. Lastly, you
#will create a text file of that tidy dataset, which you can
#then read into R.

#STEP 1: Read the "features.txt" and "activity_labels.txt" files
#into R - these will help you later with naming columns.

features <- read.table("features.txt", stringsAsFactors = FALSE)
activlabels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)

#STEP 2: Combine the three files for training data: the subjects
#(1 to 30), the activities (1 to 6), and the measurements for
#each variable. Then, do the same thing for the three test data
#files.

trainmeas <- read.table("X_train.txt")
trainsubj <- read.table("subject_train.txt")
trainactiv <- read.table("y_train.txt")
traindata <- cbind(trainsubj, trainactiv, trainmeas, stringsAsFactors = FALSE)

testmeas <- read.table("X_test.txt")
testsubj <- read.table("subject_test.txt")
testactiv <- read.table("y_test.txt")
testdata <- cbind(testsubj, testactiv, testmeas, stringsAsFactors = FALSE)

#STEP 4: Combine the training data and the test data into
#one large dataset using rbind. The dataset should have 
#10,299 rows and 563 columns. You can use the dim() function
#to check.

df <- rbind(traindata, testdata)

#STEP 5: Name the columns of your new dataset with relevant names.
#We are extracting the second column of the "features" file to name
#all the columns in this dataset except "Subject" and "Activity",
#since that file contains the label names for all the other variables.

colnames(df) <- c("Subject", "Activity", features[, 2])

#STEP 6: Now subset the data to only include (besides the "Subject"
#and "Activity" columns) columns that measure on the mean or standard
#deviation of each variable. This does NOT include means of data that
#are not the main variable being measured. For example, we're not 
#including "fBodyBodyGyroMag-meanFreq()", since that measures the mean
#of the frequency rather than the mean of the main variable,
#fBodyBodyGyroMag.

meanstd <- grep("mean\\(|std\\(", colnames(df))
df2 <- df[, c(1,2,meanstd)]

#STEP 7: Replace all of the numerical activity measurements
#(1-6) with actual activity names, such as "STANDING" and "WALKING".
#The second column of "activlabels" contains the activity names.

df2$Activity <- factor(df2$Activity, labels=activlabels[, 2])

#STEP 8: Clean up the column names - remove the dashes and replace
#them with periods (which are more R-friendly but still help to
#separate long strings of words). Also, remove the parentheses
#to make the names easier to read.

newcolnames <- gsub("-", ".", colnames(df2))
newercolnames <- gsub("\\()", "", newcolnames)
colnames(df2) <- newercolnames

#STEP 9: Create a second, independent tidy data set that applies
#the mean function to each unique subject-activity combination.
#The new dataset, which we're calling "averages," should contain 180
#rows and 68 columns. You can use the dim() function to check.
 
library(data.table)
DT <- data.table(df2)
averages <- DT[ ,lapply(.SD, mean, na.rm=TRUE), by=list(Subject, Activity)]

#STEP 10: Once you have the new tidy dataset, write it into your
#working directory as a text file called "tidydata.txt"

write.table(averages, file="tidydata.txt",row.names=FALSE, col.names=TRUE) 

#STEP 11: When you're ready to read in the table, type in
#read.table("tidydata.txt", header=TRUE)