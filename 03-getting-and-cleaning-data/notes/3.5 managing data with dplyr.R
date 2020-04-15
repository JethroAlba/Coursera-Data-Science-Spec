Managing data sets with dplyr package

See Chapter 13 R Programming
13.ManagingDataFrameswiththe dplyr package

Some of the key “verbs” provided by the dplyr package are
• select: return a subset of the columns of a 
	data frame, using a flexible notation 
• filter: extract a subset of rows from a data frame based on 
	logical conditions • arrange: reorder rows of a data frame 
• rename: rename variables in a data frame • mutate: add new 
	variables/columns or transform existing variables 
• summarise / summarize: generate summary statistics of different 
	variables in the data frame, possibly within strata 
• %>%: the “pipe” operator is used to connect multiple verb 
	actions together into a pipeline

=============================================================

For this chapter, download the chicago data noted in the book

URL<-"http://www.biostat.jhsph.edu/~rpeng/leanpub/rprog/chicago_data.zip"
chic<- readRDS("chicago.rds")

=============================================================

1. Select - subset columns

	subset<-select(chic, city:dptp)

# This will subset all columns from city to dptp
# passing the -(city:dptp) argument will subset all columns
	except city through dptp

You can also use select to subset all columns starting with or ending
with a specific condition. For instance:

	subset <- select(chic, ends_with("2")) 

Will subset all columns ending with 2; 
	
	subset <- select(chic, starts_with("d")) 

Will subset all columns starting with d.


2. Filter - subset rows
 
	chic.f <- filter(chic, pm25tmean2 > 30)

## This will subset all rows  with pm25tmean2 greater than 30

You can also pass more complex logical arguments to filter. Such as:

	chic.f <- filter(chic, pm25tmean2 > 30 & tmpd > 80) 

3. Arrange - reorder rows

	 chicago <- arrange(chic, date)

## This will arrange the DF according to date in ascending order

To arrange data in descending order, use the desc():

	chic <- arrange(chic, desc(date))
	

4. Rename - Rename rows

	rename(chic, dewpoint = dptp, pm25 = pm25tmean2) 

The above function will rename dptp to dewpoint and pm25tmean to pm25


5. Mutate - exists to compute transformations of variables in a data frame
# Mutate adds another column containg the result of transformation specified.

	chic.test<-mutate(chic, pm25above30 = pm25tmean2>30)

The above function adds a new column ("pm25above30") which says TRUE if 
the row has pm25 above 30 and FALSE if otherwise.

transmute is similar to mutate, but it drops all non-transformed variables. 
In other words, it only retains the mutated column/s.

	chic.test<-transmute(chic, pm25above30 = pm25tmean2>30)

6. group_by - used to generate summary statistics from the data frame 

If we want to split the df according to year, for example, we can do:

	* create a year varible using as.POSIXlt()
		chicago <- mutate(chic, year = as.POSIXlt(date)$year + 1900)

	*  create a separate data frame that splits the original data frame by year

		years <- group_by(chicago, year)

	* Finally, we compute summary statistics for each year in 
	  the data frame with the summarize() function.

	 summarize(years, pm25tmean2 = mean(pm25tmean2, na.rm = TRUE),  
	      o3 = max(o3tmean2, na.rm = TRUE), 
	      no2 = median(no2tmean2, na.rm = TRUE)) 

7. The pipeline operator %>%

 The %>% operator allows you to string operations in a left-to-right fashion, i.e.
 first(x) %>% second %>% third






