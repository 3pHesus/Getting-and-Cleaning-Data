# Getting & Cleaning Data
Coursera Peer-Graded Assignment for Getting &amp; Cleaning Data Week 4

## Getting and cleaning data project
This project's purpose is to demonstrate my ability to collect, work with, and clean a data set.

It's goal is to prepare tidy data which can be used later for analysis.

Submission requirements:
1) A tidy data set as described below,
2) A link to a Github repository with your script for performing the analysis
3) A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
4) A README.md in the repo with your scripts which explains how all of the scripts work and how they are connected.

### Raw Data File Link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Dataset Details
##### Authorship
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
###### Contents
The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


## R Script & Description
#### Filename = run_analysis.R
This R script "run_analysis.R" performs the following tasks:

1) Merges training and test data into a single dataframe.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name each activity in the dataframe.
4) Labels the dataframe with appropriate descriptive variable names.
5) Using the data in step 4, creates a second independent tidy dataframe with the average of each variable for each activity and each subject.

### Tidy Dataframe
#### Filename = TidyData.txt
This dataframe contains the average of each variable for each activity and each subject, and is the final output of the script entitled "run_analysis.R".

### Code Book
#### Filename = CodeBook.md
This file describes the variables, data, and all transformations performed to clean the data.
