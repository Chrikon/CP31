##run_analysis.R, author C.P.Konstantinidis

analysisObject<-function(){
  
  ##Auxilliary tables of class

  msvar<-read.csv("meanAndStdFeaturesTable.csv", header = FALSE ,col.names = c("id","variables"),sep=" ")
  
  msvar$id<-msvar$id+2 ##Id correction

  activities<-read.csv("./UCI\ HAR\ Dataset/activity_labels.txt",header = FALSE,col.names = c("id","activity"),sep=" ")
  
  fetures<-read.csv("./UCI\ HAR\ Dataset/features.txt",header = FALSE,col.names = c("id","fname"),sep=" ")
  
  ##Fields of class
  
  firstDataSet<- data.frame()##The merged tables of test and train but containing only the mean and stadrad deviation (std) of the variables
  
  secondDataSet<- data.frame()##The second  tidy data set containing thr average of the above variables for each subject and activity
  
  ##Getters

  getSecondDataSet<-function(){
    return(secondDataSet)
  }
  ##Setters
  setFirstDataSet<-function(x=data.frame()){
    firstDataSet<<-x
  }
  
  setSecondDataSet<-function(x=data.frame()){
    secondDataSet<<-x
  }

  ## Methods of the class

  setSecondDataSetNames<-function(x=data.frame()){
    
    names(secondDataSet)<<-c(names(x)[1:2],paste("Average of",names(x)[3:68],sep=" "))
    
    ##Creating the variables names of the last data set
  }
  
   
  makeTypeTables<-function(type=character()){
    
    ##Class private method, which combines by column the tables, X_*.txt, subject_*.txt and  y_*.txt. Where *={test,train}

    xtable<-read.csv(paste("./UCI\ HAR\ Dataset/",type,"/X_",type,".txt",sep=""),header = FALSE,col.names = as.character(fetures[,2]),sep="")
    
    subjects<-read.csv(paste("./UCI\ HAR\ Dataset/",type,"/subject_",type,".txt",sep=""),header = FALSE,col.names = "subject")
    
    activity<-read.csv(paste("./UCI\ HAR\ Dataset/",type,"/y_",type,".txt",sep=""),header = FALSE,col.names = "activity")
    
    ##Normalize activity records from numeric to WALKING, WALKING_UPSTAIRS, etc.
    
    for(i in 1:6){
      
      activity[activity==i]=as.character(activities[i,2])
      
    }
    
    ## Return the complete table for each type={"train" or "test"}
    
    return(cbind(subjects,activity,xtable))
    
  }
  
  makeFirstDataset<-function(){
    ##The method combines by row the table containg the data of the test and train experiments.
    ## The combine data then creates a subset, containing the mean and standard deviation
    ## values of the merged tables

    setFirstDataSet(rbind(makeTypeTables("test"),makeTypeTables("train"))[,c(1,2,msvar$id)])
  }

  meanAndStdDataSetTable<-function(){
   
   ## The method re-arrange the data set into a second tidy data set which contains the average of the mean and std
   ## variables, for each subject and activity 
    
  temp<-firstDataSet
  
  for(sub in 1:30){  ## Number of subjects=30
  		
		for(act in 1:6){  ## Number of activities=6
    		
			z<-temp[temp$subject==as.numeric(sub)&temp$activity==activities$activity[act],]
    		
			b<-c(z[[1]][[1]])
    		
			b<-cbind(b,c(z[[2]][[1]]))
    		
				for(col in 3:(length(msvar$id)+2)){ 
				## Number of mean and stbd variables plus 2 beacuse of the id and activity
				## variables (Col.1 & Col.2)
      			
					b<-cbind(b,mean(z[[col]]))
  
				}
    			
			setSecondDataSet(rbind(getSecondDataSet(),b))
    			
			rm(b,z) ##Reset counters
 		 
		}
	
  }
    setSecondDataSetNames(temp)

  }
  
  viewSecondDataSet<- function(){

    View(getSecondDataSet())
  }
  
  writeToFile<-function(overwrite=FALSE){

    if (file.exists("meanAndStdDataSet.txt")){

      if (overwrite){

        write.table(secondDataSet,file="meanAndStdDataSet.txt",row.names = FALSE,sep = ";")

      }else{

        print(paste("File already exists. Created at",file.info("meanAndStdDataSet.txt")$mtime,sep=" "))

      }

    }else{

      write.table(secondDataSet,file="meanAndStdDataSet.txt",row.names = FALSE,sep = ";")

    }
    
  }
  
  makeFirstDataset()##Create first data set
  
  meanAndStdDataSetTable()##Create second data set
  
  rm(msvar,activities,fetures)##Remove of auxilliary variables for memory recycle
  
  return(list(getDataSet=getSecondDataSet,viewDataSet=viewSecondDataSet,storeToFile=writeToFile))##Object public methods
  
}##End of construction method of analysisObject type objects 

##Execution script

analysisObj<- analysisObject()

rm(analysisObject)

##End of script
