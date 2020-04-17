if (!dir.exists("prog_ass_1")){
  dir.create("prog_ass_1")
}
setwd("./prog_ass_1")
if (!dir.exists("specdata")){
  url<-"https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
  download.file(url, "specdata.zip",method="curl")
  unzip("specdata.zip")
} 


pollutantmean<-function(directory,pollutant,id = 1:332){

  setwd(directory)
  poll.mean<-numeric()
  
  
  for (x in id){
    to.read <- list.files()[x]
    file<-read.csv(to.read)
    poll.mean<-c(poll.mean,(file[[pollutant]]))
  
  }
    setwd("..")
    mean(poll.mean,na.rm=T)
}


