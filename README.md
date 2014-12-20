
**Introduction**
----------

This R script - called "run_analysis.R" - is based on the "Human Activity Recognition Using Smartphones" dataset found in the Course Project for the "Getting and Cleaning Data" course on Coursera. Please refer to the "README.txt" file in the original dataset (or, alternately, the CodeBook.md file in this GitHub repo) if you'd like to learn more about the data being measured.

The output of this R script is a text file that contains a second, independent tidy dataset. This new dataset contains 180 rows and 68 columns. The new dataset results from the original dataset being manipulated and consolidated in various ways. Specifically, it contains three sets of columns: the subject column (of subjects numbered 1 through 30), the activity column (six activities, ranging from "Standing" to "Walking_Upstairs"), and 66 columns containing the averages of measurements on the mean or standard deviation of variables measured for each unique combination of subject and activity.

**Before you run the script**
----------------------

The source of the data is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data was obtained using this zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip I unzipped the file manually (i.e., I did not do this in R). When you unzip the file, it creates multiple subdivisions where the files are actually spread out into different levels / different directories. Thus, once the file was unzipped, I made sure to create a new folder within my preferred working directory and copy all of the unzipped files into that same *single* folder in that same working directory. I then made sure the R script was also saved in that same *single* folder / working directory.

There are 10 files in the original dataset that are relevant to the R script - see below. For more information about what each file contains, please read the "README.txt" file contained in the original dataset.

 1. "features.txt" - contains a full list of the variables being measured
 2. "features_info.txt" - contains more detailed info about the variables being measured
 3. "activity_labels.txt" - contains the six activity names that are being measured
 4. "subject_train.txt" - contains the list of subjects who are being evaluated for the training data set (each subject is identified by a number between 1 and 30)
 5. "y_train.txt" - contains the activities (numbered 1 through 6) that the subjects in the training data set participated in
 6. "X_train.txt" - contains the measurements for each variable in the training data set (the full list of variables is in "features.txt")
 7. "subject_test.txt" - contains the list of subjects who are being evaluated for the test data set
 8. "y_test.txt" - contains the activities (numbered 1 through 6) that the subjects in the test data set participated in
 9. "X_test.txt" - contains the measurements for each variable in the test data set
 10. "README.txt" - contains extremely detailed info about all of the files and the data being measured

Again, before running the R script, make sure that all 11 files (the 10 files above and the R script) are saved within the same *single* folder in the same working directory.

**Running the R Script**
------------------------
Once you have done the above, open R and source the R script to run it. A step-by-step breakdown/description of what the R script does is commented out in the R script itself - so in the interest of not being redundant, I will refer you to the R script for that information rather than typing it all out again here.

**Reading the text file into R**
--------------------------------

Once you've run the R script, to ensure that it worked correctly and that the text file (which is, again, the output of the R script) renders correctly, you can use the following command:

read.table("tidydata.txt", header=TRUE)

------------------------------------------------------------------------

> Written with [StackEdit](https://stackedit.io/).