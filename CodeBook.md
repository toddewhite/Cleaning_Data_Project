Variables for "mean_std_data" and "summary_means" data sets
===========================================================

The first variable in these data sets is 'subject' which codes for 1 of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. These activities are reported in the second variable 'activity'.

The rest of the variables these data sets come from the accelerometer and gyroscope 3-axial raw signals time-accel-xyz and time-angular_velocity-xyz. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-body_accel-xyz and time-gravity_accel-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time-change_in_body_accel-xyz and time-change_in_body_angular_velocity-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)(time-magnitude_of_body_accel, time-magnitude_of_gravity_accel, time-magnitude_of_change_in_body_accel, time-magnitude_of_body_angular_velocity, time-magnitude_of_change_in_body_angular_velocity). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq-body_accel-xyz, freq-change_in_body_accel-xyz, freq-body_angular_velocity-xyz, freq-magnitude_of_change_in_body_accel, freq-magnitude_of_body_angular_velocity, freq-magnitude_of_change_in_body_angular_velocity. (frequency domain signals). 

These signals were used to estimate the variables in these data sets for each pattern:  
'-xyz' is used to denote 3-axial signals in the x, y and z directions.
Note: We report only the mean and standard deviation (stdev) for the following variables.

time-body_accel-xyz
time-gravity_accel-xyz
time-change_in_body_accel-xyz
time-body_angular_velocity-xyz
time-change_in_body_angular_velocity-xyz
time-magnitude_of_body_accel
time-magnitude_of_gravity_accel
time-magnitude_of_change_in_body_accel
time-magnitude_of_body_angular_velocity
time-magnitude_of_change_in_body_angular_velocity
freq-body_accel-xyz
freq-change_in_body_accel-xyz
freq-body_angular_velocity-xyz
freq-magnitude_of_body_accel
freq-magnitude_of_change_in_body_accel
freq-magnitude_of_body_angular_velocity
freq-magnitude_of_change_in_body_angular_velocity


