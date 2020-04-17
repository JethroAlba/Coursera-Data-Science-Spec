rankall<-function(outcome,num = "best"){
  require(dplyr)
  require(tidyverse)
  
  out<-read.csv("outcome-of-care-measures.csv",colClasses = "character")
  
  # Subsetting and renaming needed columns  
  
  new<-out %>% select(c(2,7,11,17,23))
  names(new)<-c("hospital","state","heart attack", "heart failure", "pneumonia")
  
  # Coercing columns 3:5 into numeric
  
  for (j in 3:5){
    suppressWarnings(new[[j]]<-as.numeric(new[[j]]))
  }
  
  # Subsetting specified outcome 
  
  test<-new %>% 
    select(c("hospital","state",outcome))
  
  with.rank<-test %>% arrange(test[,2], test[,3],test[,1]) %>%
    group_by(state) %>%
    mutate(rank = 1:length(hospital)) %>%
    as.data.frame()
  
  splt<-split(with.rank, with.rank$state)
  
  # Filtering hospitals in each state with rank equal to num
 
  state.list<-unique(with.rank$state)
  hospital.n <- vector()
  state.n <- vector()
  
  for (i in state.list){
    s<-splt[[i]] 
    if (num>length(s$rank)){
      a<-"<NA>"
      b<-i
    }  
    
    if (num == "best"){
      a<-filter(s,rank == 1)[[1]]
      b<-filter(s,rank == 1)[[2]]
    }
    
    if (num == "worst"){
      wor<-s %>% drop_na() 
      wors<- wor %>% filter(rank== max(wor$rank))
      
      a<-wors[[1]]
      b<-wors[[2]]
    }
    
    if (num %in% 1:length(s$rank)) {
      a<-filter(s,rank == num)[[1]]
      b<-filter(s,rank == num)[[2]]
    }
    
    hospital.n<-c(hospital.n,a)
    state.n<-c(state.n,b)
    m<-data.frame(hospital.n,state.n)
    
  }
   
   m
}
  






