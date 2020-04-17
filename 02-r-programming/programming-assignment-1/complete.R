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


complete<-function(directory, id = 1:332){
    
    setwd(directory)
  
    nobs<-numeric()
    
    for (x in id){
      to.read <- list.files()[x]
      file<-read.csv(to.read)
      nobs<-c(nobs,sum(complete.cases(file)))
     }
      setwd("..")
      print(data.frame(id,nobs))
  }

