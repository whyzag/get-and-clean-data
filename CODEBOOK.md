==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

————————MODIFICATION——————————————————

The data set key variables part of the tidy.txt
Total number of observations are 180 of 68 variables 

Subject - Each individual who participated in the experiment identified by a numeric (integer)
Activity - Specific Activities as listed above, 6 WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING (factor)
                  
All variables below are numeric.  Data is average of each activity and subject but only pertaining to mean and standard deviation
 timeBodyAcc-mean()-X           
 timeBodyAcc-mean()-Y               
 timeBodyAcc-mean()-Z               
 timeBodyAcc-std()-X                
 timeBodyAcc-std()-Y                
 timeBodyAcc-std()-Z                
 timeGravityAcc-mean()-X            
 timeGravityAcc-mean()-Y            
 timeGravityAcc-mean()-Z            
 timeGravityAcc-std()-X             
 timeGravityAcc-std()-Y             
 timeGravityAcc-std()-Z             
 timeBodyAccJerk-mean()-X           
 timeBodyAccJerk-mean()-Y           
 timeBodyAccJerk-mean()-Z           
 timeBodyAccJerk-std()-X            
 timeBodyAccJerk-std()-Y            
 timeBodyAccJerk-std()-Z            
 timeBodyGyro-mean()-X              
 timeBodyGyro-mean()-Y              
 timeBodyGyro-mean()-Z              
 timeBodyGyro-std()-X               
 timeBodyGyro-std()-Y               
 timeBodyGyro-std()-Z               
 timeBodyGyroJerk-mean()-X          
 timeBodyGyroJerk-mean()-Y          
 timeBodyGyroJerk-mean()-Z          
 timeBodyGyroJerk-std()-X           
 timeBodyGyroJerk-std()-Y           
 timeBodyGyroJerk-std()-Z           
 timeBodyAccMag-mean()              
 timeBodyAccMag-std()               
 timeGravityAccMag-mean()           
 timeGravityAccMag-std()            
 timeBodyAccJerkMag-mean()          
 timeBodyAccJerkMag-std()           
 timeBodyGyroMag-mean()             
 timeBodyGyroMag-std()              
 timeBodyGyroJerkMag-mean()         
 timeBodyGyroJerkMag-std()          
 frequencyBodyAcc-mean()-X          
 frequencyBodyAcc-mean()-Y          
 frequencyBodyAcc-mean()-Z          
 frequencyBodyAcc-std()-X           
 frequencyBodyAcc-std()-Y           
 frequencyBodyAcc-std()-Z           
 frequencyBodyAccJerk-mean()-X      
 frequencyBodyAccJerk-mean()-Y      
 frequencyBodyAccJerk-mean()-Z      
 frequencyBodyAccJerk-std()-X       
 frequencyBodyAccJerk-std()-Y       
 frequencyBodyAccJerk-std()-Z       
 frequencyBodyGyro-mean()-X         
 frequencyBodyGyro-mean()-Y         
 frequencyBodyGyro-mean()-Z         
 frequencyBodyGyro-std()-X          
 frequencyBodyGyro-std()-Y          
 frequencyBodyGyro-std()-Z          
 frequencyBodyAccMag-mean()         
 frequencyBodyAccMag-std()          
 frequencyBodyBodyAccJerkMag-mean() 
 frequencyBodyBodyAccJerkMag-std()  
 frequencyBodyBodyGyroMag-mean()    
 frequencyBodyBodyGyroMag-std()     
 frequencyBodyBodyGyroJerkMag-mean()
  frequencyBodyBodyGyroJerkMag-std()



——————————————————


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

