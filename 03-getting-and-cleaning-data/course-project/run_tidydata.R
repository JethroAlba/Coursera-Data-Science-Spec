# Loading  required packages
require(dplyr)
require(reshape2)

# Creating directory and downloading the data

if (!dir.exists("CleanData")){
  dir.create("CleanData")
}

if(!dir.exists("./CleanData/UCI HAR Dataset/")){
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,destfile="./CleanData/data.zip")
  setwd("./CleanData")
  unzip("data.zip")
  
} else {
  setwd("./CleanData")
}


# Loading feature and activity labels

features_labels<- as.character(read.table("./UCI HAR Dataset/features.txt")[[2]])
activity_labels<- as.character(read.table("./UCI HAR Dataset/activity_labels.txt")[[2]])

# Loading train data set

train<-read.table("./UCI HAR Dataset/train/X_train.txt") 
train.lab<-read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# Loading test data
test<-read.table("./UCI HAR Dataset/test/X_test.txt")
test.lab<-read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merging data frames

test.combine<-cbind(test.subject,test.lab,test)
train.combine<-cbind(train.subject,train.lab,train)
merged<-rbind(train.combine,test.combine)

# Renaming column names of merged data to feature_labels

colNam<-c("id","activity", features_labels)
names(merged)<-colNam


# Renaming factor levels of the "activity" column in merged data to activity_labels

merged$activity<-as.factor(merged$activity)
levels(merged$activity)<-activity_labels   

# Identifying and subsetting the position of columns with  mean() or std() 

a<-grep("std|mean",names(merged),value=TRUE)
b<-grep("std|mean",names(merged))
no.freq<-grep("[Ff]req",a)
for.sub<-b[-no.freq]
interested_col<-merged[c(1,2,for.sub)]

## You can also use the following operations to subset columns with mean() / std()
##   column.names<-names(merged)
##    interested_col<-merged[c(1,2,c(grep("std\\(\\)|mean\\(\\)", column.names)))]


# Renaming variables to descriptive names

varNames<-names(interested_col)
varNames <- gsub("^f", "frequencyDomain", varNames)
varNames <- gsub("^t", "timeDomain", varNames)
varNames <- gsub("Acc", "Accelerometer", varNames)
varNames <- gsub("Gyro", "Gyroscope", varNames)
varNames <- gsub("Mag", "Magnitude", varNames)
varNames <- gsub("Freq", "Frequency", varNames)
varNames <- gsub("mean", "Mean", varNames)
varNames <- gsub("std", "StandardDeviation", varNames)
varNames <- gsub("BodyBody", "Body", varNames)
varNames <- gsub("[\\(\\)]", "", varNames) #Remove unnecessary characters 
names(interested_col)<-varNames  


# Loading final data set with only mean() and std()

View(interested_col)

# Creating a tidy data set with the average of each variable for each activity and each subject.

meaVars<-names(interested_col[3:length(interested_col)])
melted<-melt(interested_col, id.vars = c("id", "activity"), measure.vars = meaVars)
dcasted<-dcast(melted, id + activity ~ variable, mean)

# Creating a .txt file containing the tidy data

write.table(dcasted, file = "tidydata.txt", row.names = TRUE)

# Reading newly created tidy data set to check 

tidy<-read.table("tidydata.txt")
View(tidy)




