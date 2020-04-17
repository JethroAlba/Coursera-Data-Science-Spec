current.dir<-getwd() ; current.dir
if (str_detect(current.dir, "prog_ass_1$") == FALSE){
  print ("Setting correct directory")
  if(!dir.exists("prog_ass_1")){
    print("prog_ass_1 does not exist. Please check working directory")
  } else {
    setwd("./prog_ass_1/")
    print("Directory set")
  }
} else {
  print ("Directory correct. Please proceed.")
}


corr<-function(directory,threshold = 0){
  require(dplyr)
  setwd(directory)
  nobs<-numeric()
  
  for (x in 1:332){
    to.read <- list.files()[x]
    file<-read.csv(to.read)
    nobs<-c(nobs,sum(complete.cases(file)))
    }
      
  completecases<-data.frame(id,nobs)
  
  index<-completecases %>% 
    filter(completecases$nobs>threshold) %>%
    select(id) 
  
  correl<-numeric()
  
  for (x in index[[1]]){
    to.read <- list.files()[x]
    file<-read.csv(to.read)
    sul<-na.exclude(file)[["sulfate"]]
    nit<-na.exclude(file)[["nitrate"]]
    correl<-c(correl, cor(sul,nit))
  }
  setwd("..")
  correl
}





