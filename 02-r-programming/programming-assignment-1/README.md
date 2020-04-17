# Programmming Assignment 1 Air Pollution

This repository contains the R code files for the first programming assignment for Module 2 R Programming. 

For this activity, the student is given zip file contains 332 comma-separated-value (CSV) files containing pollution monitoring data for fine particulate matter (PM) air pollution at 332 locations in the United States. Each file contains data from a single monitor and the ID number for each monitor is contained in the file name. The objective is to unzip this file, create the directory 'specdata', and perform specific tasks according to the instructions provided. 

This repository contains the following source codes. Descriptions of each file is found in the subsequent sections. 

* `pollutantmean.R` - 
* `complete.R`
* `corr.R` 

## pollutantmean.R

This script contains a function that calculates the mean of a given pollutant  across a specified list of monitors. The function takes three arguments: `directory`, `pollutant`, and `id`. Given a vector monitor ID numbers, **pollutantmean** reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as `NA`.

## complete.R

This script contains a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function returns a data frame where the first column is the name of the file and the second column is the number of complete cases.

##  corr.R 

This script contains a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between `sulfate` and `nitrate` for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function returns a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. 

### Notes

Each script is designed to create a directory named `./prog_ass_1`. Before running each script, ensure that the working directory is set to this path. 

