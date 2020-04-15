Common variables to create
- missingness indicators
- cutting up quantitative variables
- applying transforms

## Creating sequences
# important for making indices for your dataset

seq(1,10, by=2) ## create a sequence from 1 to 10, by intervals of 2
seq(1,10, length=3) ## create a sequence of legnth 3 between 1 to 10
x<-c(1,3,8,25,100); seq(along=x) ## create sequence along the specified vector
 

## The first code is a logical argument that tells you 
	## if a restaurant is in "Frankford". It stores the result in a new 
	## column == rest$nearME
## The second code summarizes how many restaurants there is in "Frankford" 
	## by summarizing all the TRUE value in rest$nearMe 

rest$nearMe<-rest$neighborhood %in% c("Frankford")
table(rest$nearMe)


## Cutting
## note: cutting produces factor variables

library(Hmisc)
rest$zipGroups=cut2(rest$zipCode,g=4)
table(rest$zipGroups)

## Creating factor variable
rest$zcf<-factor(rest$zipCode) ## Transforms zipCode column into factor 
 




