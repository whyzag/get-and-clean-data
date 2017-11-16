README

All code is within one program  run_analysis.R

The program uses the reshape2 library (see last few steps)

The code follows the steps outlined in the assignment as follows

	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive variable names.
	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Program execution

To be run in your R Studio (or your preferable R environment)

	1. Execute the program run_analysis.R in the directory 
	2. The program reads the current working directory and sets the path variable
	3. Program downloads the file to “project.zip” in the current working directory
	4. path variable is set and file unzipped using the absolute path formed with paste0
	5. All Training data and Test data are read 
	6. The data is merged after extracting appropriately for mean and standard deviation measurements
	7. Assigns descriptive names after mapping activity labels appropriately
	8. Uses melt and dcast from the reshape2 library to create the new tidy file tidy.txt

