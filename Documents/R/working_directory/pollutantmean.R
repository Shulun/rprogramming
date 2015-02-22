pollutantmean <- function(directory, pollutant, id=1:332) {
  
  allFiles<-list.files(path=directory,full.names=T)
  dataSelected<-data.frame()
  for(i in id){
    dataSelected<-rbind(dataSelected,read.csv(allFiles[i]))
  }
  if(pollutant=='sulfate'){
    print(mean(dataSelected$sulfate,na.rm=T))
  }else if(pollutant=='nitrate'){
    print(mean(dataSelected$nitrate,na.rm=T))
  }
}