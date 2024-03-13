setwd("C:\\Users\\it22271150\\Desktop\\New Folder")
getwd()
data5<-read.table("Data.txt",header = TRUE,sep=",")
data5
fix(data5)
names(data5)<-c("X1","X2")
attach(data5)
hist(X2, main="histogram for the no.of share holders")

histogram<-hist(X2,main="histogram for the no.of share holders",breaks=seq(130,270,length=8),right=FALSE)

#analyze the break point
breaks<-round(histogram$breaks)

#frequency from each class
freq<-histogram$counts
#mid point of each class
mids<-histogram$mids
mids
#1.create empty vector
classes<-c()
#2.loop
for(i in 1:length(breaks)-1){
  classes[i] <-paste0("(",breaks[i],",",breaks[i+1],")")
}
#cbin=joining 2 coloms to a single data frame
classes
cbind(Classes=classes,Freq<-freq)
lines(histogram$mids,freq)

plot(mids,freq,type = "p",
     main="freq.polygon for sharehlders ",)
    ylim=c(0,max(freq)))

new<-c()
for(i in 1:length(breaks)){
  if(i)
}
