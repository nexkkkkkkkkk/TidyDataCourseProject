# Script to create a tidy data set from "Human Activity Recognition Using Smartphones Dataset",
# as set out in the Readme.md file.

# Raw data files unzipped from zip data file into the working directory

# First read in the test data -- three files, x,y, and subject -- and 
# make it into one dataset testdata

xt <- read.table("UCI HAR Dataset/test/X_test.txt")
yt <- read.table("UCI HAR Dataset/test/y_test.txt")
st <- read.table("UCI HAR Dataset/test/subject_test.txt")
testdata <- cbind(st$V1,yt$V1,xt)

# Then read in the train data -- three files, x,y, and subject -- and 
# make it into one dataset traindata

xt <- read.table("UCI HAR Dataset/train/X_train.txt")
yt <- read.table("UCI HAR Dataset/train/y_train.txt")
st <- read.table("UCI HAR Dataset/train/subject_train.txt")
traindata <- cbind(st$V1,yt$V1,xt)
rm(xt,yt,st)  # remove the temporary variables to save memory resource

# Merge the test and train data rows into one set combineddata -- this has 
# all the rows from both test and train data, first column subject, second column
# activity_code, the rest of the columns are the variables

combineddata <- rbind(traindata,testdata)
rm(testdata,traindata) # remove the temporary variables to save memory resource

# Read in the activity names from file activity_labels, and replace the activity codes 
# in combineddata with these activity labels (in second column)

activity_names <- read.table("UCI HAR Dataset/activity_labels.txt",as.is = 2)
combineddata[,2] <- activity_names[combineddata[,2],2]

# Read in features.txt for the x variable names, and make them into valid column names.
# First remove invalid characters the brackets '()' which add nothing to the 
# clarity of the labels, then replace the other invalid characters '-' and ',' with '.'. 
# Then label combineddata with these new labels. Note: the first two columns are subject
# and activity code, and are labelled accordingly. Another note: there are duplicate column names,
# however those duplicates are not part of the columns selected for the final tidy data set,
# hence they were ignored for this exercise.

varlabels <- read.table("UCI HAR Dataset/features.txt",as.is = 2)  # make sure the names are not set as factors
varlabels$V2 <- make.names(gsub("\\(\\)","",varlabels$V2)) #clean up labels
colnames(combineddata) <- c("subject","activity",varlabels$V2)  #create properly labeled combined data set

# Reduce the combined data set to columns with the word "mean" or "std" in it, calling
# it selectdata (includes the identifiers subject and activity)

ix <- grep("([Mm]ean)|(std)",varlabels$V2)+2  #this returns the index of any var names with M/mean or std in it
selectdata <- combineddata[,c(1,2,ix)] # creates new data set with subject,activity,and the rest of the selected cloumns

# Create a new, independent tidy data set with the average of each variable for each activity and 
# each subject

tidy_data <- aggregate(selectdata[,3:88],by=list(selectdata$subject,selectdata$activity),mean,simplify=TRUE)

# Change the column names to reflect that the columns now contain averages: prepend "Means.Of.."
# to column names; and also change identifiers to clarify

colnames(tidy_data) <- c("GroupedBy.1.Subject","GroupedBy.2.Activity",paste("Means.Of..",colnames(tidy_data)[3:88],sep=""))
  
# Create a file of column names to be used for documentation

# write.table(colnames(tidy_data), file="columns.txt",row.name=FALSE,col.names = FALSE)

# Create a file of the tidy data set
  
write.table(tidy_data, file="TidyData.txt",row.name=FALSE)

