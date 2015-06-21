# TidyDataCourseProject
Coursera Clean Data Course Project

## Introduction

This project is an assignment for the Coursera Clean Data Course, and the object is to create a tidy data set from the "Human Activity Recognition Using Smartphones Dataset, Version 1.0", that contains the means of selected measurements for each activity and each subject:
"...create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

## How to recreate the Tidy Data Set

Unzip the raw data into the working directory that run_analysis.R is placed -- the script will find the data in the "UCI HAR Dataset" so created. Please see the raw data set and documentation for details of the original data. 

Run the script run_analysis.R. The output of the script is in the same directory as the script is, and is called TidyData.txt.  It contains the final dataset, and can be read in with the following R statement:
```
mydata <- read.table("TidyData.dat", header = TRUE)
```
where mydata will contain the data, with labels.

Please consult the CodeBook.md file for details of the data contained within.

## How the transformation is done

The script performs the following transformations (see documentation insided the script file for details):

### Merging the Data
After unzipping the raw data files, the following files were used (all have .txt extension).
The training data files
* subject_train (1 column of subject codes, range 1-30), 
* y_train (1 column of activity codes, range 1-6), 
* x_train (561 columns of measurement for each subject and activity) 
were combined to form a table with 563 columns.
After similarly combining the test data files  
* subject_test (1 column of subject codes, range 1-30), 
* y_test (1 column of activity codes, range 1-6), 
* x_test (561 columns of measurement for each subject and activity), 
the rows of these two tables were combined to form the combined data set. The resulting table had 10299 rows (observations) with 563 columns(variables), the first two of which identified the subject by code and the activity by code; the rest of the columns contained the raw data as described in the raw data set.

### Labeling the columns
The descriptions of the raw data variables in file features.txt was used to give the table columns names.  These descriptions by themselves contained characters that were illegal for column names, so they were slightly modified by stripping out all brackets '(' and ')', and replacing all other invalid characters '-', and ',' by '.'.  Although not as nice as the original descriptions, the resulting column names are still clearly identifiable.

Note that this table had duplicate column names; however the columns we were interested in for this assignment were unique, hence the duplicate column problem was ignored.

### Activity labels
The descriptive activity names from file activity_labels.txt were used to replace the 6 numeric activity codes in the combined data set.

### Selecting columns
The assignment called for extracting only the measurements on the mean and standard deviation for each measurement.  This could be interpreted several ways, I chose to take the broadest set arguing that it is better to have more than to miss out on something.  Hence I selected all columns that have the word 'mean' or 'std' in it, resulting in 86 measurements.  A new selected data set was created with these columns, plus the two keys subject and activity, resulting in a table with 10,299 rows and 88 columns.

### Independent Tidy Data Set: means of selected measurements
The final data set contains the average of each selected measurement for each activity and each subject. There are 6 activities X 30 subjects = 180 observations for each of the 86 selected measurements. I chose to present it in the "wide" format, where the means of each of the measurements are the columns, and the rows are the subject-activity observations. The resulting data set has one variable per column and each different observation of that variable (for the subject-activity combo) in in a different row.

### Labeling the Tidy Data Set

In order not to confuse the the mean of the measurements with the actual measurements of the original raw data set, column names of the Tidy Data Set have "Means of.." prepended to it in addition to having transformed them into valid column names.


