
library("reshape2")
#find the directory you are in
path <- getwd()

#download the file
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              "project.zip")

#complete absolute path to file
unzip(paste0(path, "/project.zip"))

#use read.table to read the Training data + Subject
TrainingData <- read.table(paste0(path, "/UCI HAR Dataset/train/X_train.txt"), header=FALSE)
TrainingLabels <- read.table(paste0(path, "/UCI HAR Dataset/train/y_train.txt"), header=FALSE)
TrainingSubjects <- read.table(paste0(path, "/UCI HAR Dataset/train/subject_train.txt"), header=FALSE)

#use read.table to read the Testing data + Subject
TestData <- read.table(paste0(path, "/UCI HAR Dataset/test/X_test.txt"), header=FALSE)
TestLabels <- read.table(paste0(path, "/UCI HAR Dataset/test/y_test.txt"), header=FALSE)
TestSubjects <- read.table(paste0(path, "/UCI HAR Dataset/test/subject_test.txt"), header=FALSE)

#use read.table to read the feature.txt file to be used
features_r <- read.table(paste0(path, "/UCI HAR Dataset/features.txt"), header=FALSE)
activity_labels <- read.table(paste0(path, "/UCI HAR Dataset/activity_labels.txt"),header=FALSE)


#merge the data with bind
MeasurementCombined <- rbind(TrainingData, TestData)
LabelsCombined <- rbind(TrainingLabels, TestLabels)
SubjectsCombined <- rbind(TrainingSubjects, TestSubjects)

#extract the mean and standard deviation only from the files downloaded (features_r which is features.txt)
extract_mean_std <- grep("mean\\(\\)|std\\(\\)", features_r$V2)
#extract the function names - should only be mean() or std() suffixed
extract_mean_std_names <- features_r[extract_mean_std, 2]

#now only pick observations from the total merged data selecting mean and standard deviation based data

MeasurementCombined <- MeasurementCombined[,extract_mean_std]

#merged all the data in order - Subject, Lables and Measurement after downsizing Measurement with the required mean/standard 
#deviation set of measurements
cData <- cbind(SubjectsCombined, LabelsCombined, MeasurementCombined)


#replace the numeric activity label with the actual activity name - simple transformation
cData[,2] <- activity_labels$V2[cData[,2]]

#assign descriptive variable names to the observations - Subject and Activity to the first two columns
#for the rest some clean ups need to be done and descriptive names 
#change the 't' and 'f' to 'time' and 'frequency' and some clean ups
#brute force below, not very elegant
extract_mean_std_names <- gsub("^f", "frequency", extract_mean_std_names)
extract_mean_std_names <- gsub("^t", "time", extract_mean_std_names)
extract_mean_std_names <- gsub("\\(\\)", "", extract_mean_std_names)
extract_mean_std_names <- gsub("-.*", "", extract_mean_std_names)

#assign the descriptive names
colnames(cData) <- c("Subject", "Activity", extract_mean_std_names)

#create a second tidy data set with average 
#use melt with ID variables to be Activity and Subject 
cDatamelted <- melt(cData, id.vars=c("Subject", "Activity"))
#apply dcast to create the format required for the 2nd data set
cData.new <- dcast(cDatamelted, Subject+Activity~variable, mean)

#create the dataset tidy.txt
write.table(cData.new, file=paste0(path,"/UCI HAR Dataset/tidy.txt"), row.names=FALSE, append=FALSE)
