# Getting-Cleaning-Data
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

### R Script & Description
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
