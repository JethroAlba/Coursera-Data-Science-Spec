rankhospital<-function(state,outcome,num = "best"){
  out<-read.csv("outcome-of-care-measures.csv",colClasses = "character")
  require(dplyr)
  
  name.index<-c("hospital","state",outcome)
  
  # Checking if input is valid
  outcome.index <-c("heart attack","heart failure", "pneumonia")
  if(!outcome %in% outcome.index){stop("invalid outcome")}
  
  state.index<-unique(out[["State"]])
  if(!state %in% state.index){stop("invalid state")}
  
  # Assigning value to `res` depending on outcome input 
  if (outcome == "heart attack"){
    res <- 11
  }
  
  if (outcome == "heart failure"){
    res <- 17
  }
  
  if (outcome == "pneumonia"){
    res <- 23
  }
  
  sub<-out %>% 
    select(c(2,7,res)) %>%
    filter(State == state) 
   
  names(sub)<-name.index
  sub[,3]<-suppressWarnings(as.numeric(sub[,3]))
  
  # Subsetting hospital in rank
 
  sub.ord<-sub[order(sub[,3],sub[,1]),]
  
  
  if (num == "best"){
    num<-1
    na.omit(sub.ord)[num,1]
  }
  
  if (num == "worst"){
    tail(na.omit(sub.ord),1)
  } else{
  
  na.omit(sub.ord)[num,1]
  }
}   