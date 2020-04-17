# Programming Assignment 3 Hospital Quality

This repository contains the source codes for the third programming assignment for the Module 2 R Programming. 

For this activity, the student is given a zip file containing data from the Hospital Compare web site (http://hospitalcompare.hhs.gov)
run by the U.S. Department of Health and Human Services. The purpose of this website is too provide data and information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S. This dataset essentially covers all major U.S. hospitals. This dataset is used for a variety of purposes, including determining whether hospitals should be fined for not providing high quality care to patients.

The Hospital Compare web site contains a lot of data and but this activity will only look into a small subset of that. The zip file for this assignment contains three files:
* `outcome-of-care-measures.csv`: Contains information about 30-day mortality and readmission rates
for heart attacks, heart failure, and pneumonia for over 4,000 hospitals.
* `hospital-data.csv`: Contains information about each hospital.
* `Hospital_Revised_Flatfiles.pdf`: Descriptions of the variables in each file (i.e the code book).


The objective of this activity is to create three functions which can perform the following tasks:
* Find the best hospital in a state;
* Rank hospitals by outcome in a state; and
* Rank hospitals in all states. 



##  Finding the best hospital in a state

The `best.R` file contains a function that takes two arguments: the 2-character abbreviated name of a state and an outcome name. The function reads the outcome-of-care-measures.csv file and returns a character vector with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the specified outcome in that state. The hospital name is the name provided in the Hospital.Name variable. The outcomes can be one of “heart attack”, “heart failure”, or “pneumonia”. Hospitals that do not have data on a particular outcome was excluded from the set of hospitals when deciding the rankings.

If there is a tie for the best hospital for a given outcome, hospital names were sorted in alphabetical order and the first hospital in that set was chosen (i.e. if hospitals “b”, “c”,and “f” are tied for best, then hospital “b” should be returned).

##  Ranking hospitals by outcome in a state

The `rankhospital.R` file contains a function that takes three arguments: the 2-character abbreviated name of a
state (state), an outcome (outcome), and the ranking of a hospital in that state for that outcome (num). The function reads the outcome-of-care-measures.csv file and returns a character vector with the name of the hospital that has the ranking specified by the num argument. The num argument can take values “best”, “worst”, or an integer indicating the ranking (smaller numbers are better). If the number given by num is larger than the number of hospitals in that state,  the function returns NA. Hospitals that do not have data on a particular were excluded from the set of hospitals when deciding the rankings.

For hospitals have the same 30-day mortality rate for a given cause of death, ranking is decided based on alphabetical arrangement of hospital names.


## Ranking hospitals in all states

The `rankall.R` file contains a function that takes two arguments: an outcome name (outcome) and a hospital ranking (num). The function reads the outcome-of-care-measures.csv file and returns a 2-column data frame containing the hospital in each state that has the ranking specified in num. The function should return a value for every state (some may be NA). The first column in the data frame is named hospital, which contains the hospital name, and the second column is named state, which contains the 2-character abbreviation for
the state name. Hospitals that do not have data on a particular outcome were excluded from the set of hospitals when deciding the rankings.

Ties in ranking is handled in a similar manner as with the `rankhospital.R`. 


### Note

Ensure that the zip file is downloaded by running `best.R` first. Running the `rankhospital.R` or `rankall.R` functions prior to the `best.R` function will result in an error, as the command to download the needed file is written in the latter file. 

The complete instructions for this assignment can be found [here](https://d3c33hcgiwev3.cloudfront.net/_2a0d228f9a48b3de85eedf022225fac9_ProgAssignment3.pdf?Expires=1587168000&Signature=QSbweCwxXVS940~2T5Llw-TqgdyubaLXCNv52oksrYIIHm~sC9nKTUe5Z7x~oSXmgUXkCQg2x2FgewqIsQWL19T8DtC0gByRIYxxWZgVZi5qpsZllw1AEQ04fFSFVH6uGlWo9ySQMUudjicfLak8M79~8UHyvKTEwh1ad60hcrQ_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A).
