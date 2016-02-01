The scripts contained in the file "run_analysis.R" assume that following files from the Samsung data (source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) are in your working directory:

features.txt
subject_test.txt
subject_train.txt
X_test.txt
X_train.txt
y_test.txt
y_train.txt

The scripts are written to complete the following actions.

1. LOAD DATA

2. CODE THE DATA WITH FEATURES, ACTIVITY LABELS, AND SUBJECTS

3. APPEND TRAINING DATA TO THE TEST DATA TO CREATE ONE DATA SET, "merged_tt"

4. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
     TO FORM A NEW DATA SET, "mean_std_data"

5. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN "mean_std_data"

6. APPROPRIATELY LABEL "mean_std_data" WITH DESCRIPTIVE VARIABLE NAMES

7. CREATE A SECOND, INDEPENDENT TIDY DATA SET, "summary_means", WITH THE AVERAGE OF EACH
     VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT IN "mean_std_data" 

The key aspect of the scripts is to convert the activity labels and subjects to factors to allow for manipulation of the factor levels and sort the data frame.
