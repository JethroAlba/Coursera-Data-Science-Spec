Reshaping data

reshape2 package is a useful tool for reshaping data

reshape2 is an R package written by Hadley Wickham that makes it easy to 
transform data between wide and long formats.
(see https://seananderson.ca/2013/10/19/reshape/ for more details)

Wide data vs long data
* Wide data has a column for each variable
* Long-format data has a column for possible variable types 
  and a column for the values of those variables. 

reshape2 is based around two key functions: melt and cast:
*melt takes wide-format data and melts it into long-format data.
*cast takes long-format data and casts it into wide-format data.

Example: using airquality 

names(airquality) <- tolower(names(airquality))
aql<-melt(airquality,id.vars=c("month","day"))

## The function above used month and day as ID vars while using the other 
	variables as measure variables. The result is a data frame with 4 
	columns including month, day, variable (temp, ozone, etc), and the value 
	of the variable.

## The following is also another way of melting the airquality dataset
	while also renaming the variable and value columns

aql <- melt(airquality, id.vars = c("month", "day"),
  variable.name = "climate_variable", 
  value.name = "climate_value")

## To convert the long data frame to wide DF, we can use dcast

dcast(aql,month+day~variable)

## The function above will convert the melted data frame to its 
somewhat original form. The dcast command can also be used to reshape the long
data frame into other forms. For instance,

dcast(aql,month~variable)

## The code above summarizes the aql data frame by month. By  default, it will
show the number of observations per variable for each month. 

## To change the default operation, pass on another argument to dcast like this:

dcast(aql, month~variable,mean,na.rm=TRUE)

## Another way of transforming data is by using loop functions
## review lapply, sapply, tapply, and other functions in the apply family


		
	

