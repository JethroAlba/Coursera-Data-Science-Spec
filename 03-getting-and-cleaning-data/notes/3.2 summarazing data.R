
if (!dir.exists("summarazing data")){
	dir.create("summarazing data")
	}

setwd("./summarazing.data")

URL<-"https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(URL,destfile="rest.csv",method="curl")

rest<-read.csv("rest.csv")

### Summarizing Data ###

head()
tail()

summary(rest)
str(rest)

quantile(rest$councilDistrict,na.rm=T)  ## good for looking into integers and numeric type of data within df


## creating tables

table(rest$zipCode,useNA="ifany") ## creates a 1-dimensional df
table(rest$councilDistrict,rest$zipCode) ## creates 2-dim df

## Checking for missing values

sum(is.na(rest$name))<-gives you the number of NAs in a given column
any(is.na(rest$name))<-tells you whether or not there are NAs in a given column


col<-vector()
NAs<-vector()
for (i in names(rest)){
	sum.NA<-sum(is.na(rest[i]))
	col<-c(col,i)
	NAs<-c(NAs, sum.NA)
}

## getting row and col sums

colSums(is.na(rest))
all(colSums(is.na(rest))==0)


## identifying values with specific characteristics ##

table(rest$zipCode %in% c(21212,21213))	

## making cross tabs ##
	
as.data.frame(xtabs(zipCode~name+councilDistrict,data=rest))
	



