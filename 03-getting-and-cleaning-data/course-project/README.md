# Getting and Cleaning Data Course Project

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The purpose of this project is to demonstrate the student's ability to collect, work with, and clean a data set. The goal is to take the raw data collected from accelerometer from the Samsung Galaxy S smartphone and prepare tidy data that can be used for later analysis.

This repository contains the following files:
* **README.md**  - provides the background and objective of the course project
* **CodeBook.md** - describes the contents of the data set (data, variables and transformations used to generate the data). 
* **tidy.txt**  - contains the tidy data set taken from the oringal data files 
* **run_tidy.R** - the R script used to create the tidy data




# Study Design
The source data set used in the experiment was taken from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Information about the source data and the experiment are as follows: 

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# How the script works

Running the **run_tidy.R** script performs the following tasks:
1. Create and set a new working directory
2. Download and extract raw data from [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Read data
4. Merge interested data sets and rename variables
5. Select mean and standard deviation variables from merged data
6. Creates a separate file containing the tidy data

