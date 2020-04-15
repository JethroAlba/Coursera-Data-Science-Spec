Week 4
Editing text variable

Contents
1. Removing elements of a string using split()
2. Substituting an element in a text string
3. Finding values using grep() and grepl()
4. Overview of the stringr package
5. Important points about text in data sets


================================================================================

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv",method="curl")
cameraData <- read.csv("./data/cameras.csv")
cameraData<-select(cameraData, address:Location.1)


## The above function downloads the Baltimore Speed data set

================================================================================

names(cameraData)
	[1] "address"                      "direction"                   
	[3] "street"                       "crossStreet"                 
	[5] "intersection"                 "Location.1"                  

## It is often good practice to turn all col names to lowercase so you dont 
	make mistakes typing out the names in R. To do this, use tolower()


names(cameraData)<-tolower(names(cameraData))
names(cameraData)

	[1] "address"      "direction"    "street"       "crossstreet"  "intersection"
	[6] "location.1"  

================================================================================

Removing the "1" in "location.1"

Steps:
1. Split names of df on period (using strsplit)
2. Selecting the first element of the split string

splitNames=strsplit(names(cameraData),"\\.") # This code splits the name of the df on period
splitNames[[6]][1]
	[1] "location"

# There are several ways we can do this; we can use a for loop 

split<-function(df){
	nam<-vector()
	for (x in 1:length(splitNames)){
		spl<-df[[x]][1]
		nam<-c(nam,spl)
	}
	nam
}

Names<-split(splitNames)
Names[6]

	[1] "location"

# Or you can make a regular function expression and use sapply

firstElem<-function(x){x[1]} #gets the first element of a vector
sapply(splitNames,firstElem)

========================================================================

##Substituting an element in a text string

# For this, we'll be using the default camera data names
cameraData <- read.csv("./data/cameras.csv")
cameraData<-select(cameraData, address:Location.1)

# You can substitute an element in a text string using sub()

names(cameraData)
	[1] "address"      "direction"    "street"       "crossStreet"  "intersection"
	[6] "Location.1"  

sub("\\.","",names(cameraData))
	[1] "address"      "direction"    "street"       "crossStreet"  "intersection"
	[6] "Location1"   

## In the above example, the "." in Location.1 has been removed

NOTE: sub() only removes the first instance of a matched element. For instance,
if Location.1.1.1 is passed through sub("\\.","",a), it will only remove the first period

a<-"Location.1.1.1"
sub("\\.","",a)
	[1] "Location1.1.1"

# To remove all instances of ".", use gsub()

gsub("\\.","",a)
	[1] "Location111"

============================================================================

Finding values using grep() and grepl()

grep and grepl search for matches to argument pattern within each
element of a character vector.

grep("E/B",cameraData$direction)
	[1]  1  3  7  9 18 20 27 33 36 37 43 47 50 52 56 57 58 
		64 65 68 71 72 73 77

# The result shows the position where "E/B" appears

grepl("E/B",cameraData$direction)
	[1]  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE
	[13] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
	[25] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
	[37]  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE
	[49] FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE
	[61] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE
	[73]  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE

#grepl on the other hand returns TRUE if E/B appears in a position and FALSE if not
# We can use table() to summarize the result of grepl

table(grepl("E/B",cameraData$direction,V))



# value=T argument can be passed on to grep() to return the actual values where the 
  interested element appears in. For instance, we want to know all the values where
  "AVE" appears in cameraData$address.

grep("AVE",cameraData$address, value=T)
	[1] "GARRISON BLVD & WABASH AVE"    "EDMONDSON AVE & N ATHOL AVE"  
	[3] "YORK RD & GITTINGS AVE"        "ORLEANS ST & N LINWOOD AVE"   
	[5] "W COLD SPRING LN & ROLAND AVE" "N CHARLES ST & E LAKE AVE"  
	... 40 Others

## The above function returns all values with "AVE"
# We can also combine this with values=F and make a df showing the values
  where "AVE" appears and their position.

AVE.value<-grep("AVE",cameraData$address, value=T)
AVE.pos<-grep("AVE",cameraData$address, value=F)
data.frame(AVE.value,AVE.pos)
  	                           AVE.value AVE.pos
	1           GARRISON BLVD & WABASH AVE       1
	2          EDMONDSON AVE & N ATHOL AVE       3
	3               YORK RD & GITTINGS AVE       4
	4           ORLEANS ST & N LINWOOD AVE       7
	5        W COLD SPRING LN & ROLAND AVE       9
	...

#validate if correct
cameraData[7,1]
	[1] ORLEANS ST & N LINWOOD AVE

==========================================================================

The Stringr package

install.packages("stringr")
library(stringr)


Useful functions:
1. nchar()
2. substr() <- for subsetting strings
3. paste()
4. paste0()
5. str_trim()

=============================================================================
Important points about text in data sets

1. Names of variables should be
2. All lower case when possible
3. Descriptive (Diagnosis versus Dx)
4. Not duplicated
5. Not have underscores or dots or white spaces
6. Variables with character values
7. Should usually be made into factor variables (depends on application)
8. Should be descriptive (use TRUE/FALSE instead of 0/1 and Male/Female versus 0/1 or M/F)




	
		
		






