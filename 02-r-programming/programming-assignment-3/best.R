url<-"https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2FProgAssignment3-data.zip"

if(!dir.exists("prog_ass_3")){
    dir.create("prog_ass_3")
    download.file(url,destfile = "./prog_ass_3/data.zip",method = "curl")
    setwd("./prog_ass_3")
} else{
    setwd("./prog_ass_3")
}

unzip("data.zip")

hos<-read.csv("hospital-data.csv",)
out<-read.csv("outcome-of-care-measures.csv",colClasses = "character")

# Part 1 Plot the 30-day mortality rates for heart attack
hist(as.numeric(outcome[, 11]))

# Part 2 Finding the best hospital in a state

best<-function(state,outcome){
  require(dplyr)
  
  name.index<-c("hospital","state",outcome)
  
  outcome.index <-c("heart attack","heart failure", "pneumonia")
  if(!outcome %in% outcome.index){stop("invalid outcome")}
  
  state.index<-unique(out[["State"]])
  if(!state %in% state.index){stop("invalid state")}
  
  if (outcome == "heart attack"){
    res <- 11
  }
  
  if (outcome == "heart failure"){
    res <- 17
  }
  
  if (outcome == "pneumonia"){
    res <- 23
  }
  
  select.index<-c(2,7,res)
  
  sub<-out %>% 
      select(select.index) %>%
      filter(State == state) 
    
  names(sub)<-name.index
  sub[,3]<-suppressWarnings(as.numeric(sub[,3]))
  
  sub[order(sub[,3],sub[,1]),] %>%
    slice(1L)
}   
