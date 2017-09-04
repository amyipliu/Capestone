####
library(dplyr)
library(ggplot2)
library(readxl)
library("xlsx")
Sample_data=read.csv("./sample.csv",header=TRUE)
names(Sample_data)
View(Sample_data)
dim(Sample_data)
Sample<-Sample_data[, order(names(Sample_data))]
names(Sample)
Sample<Sample_data[,c(which(colnames(Sample)=="id"),which(colnames(Sample)!="id"))]
View(Sample)


na_count <-sapply(Sample_data, function(y) sum(length(which(is.na(y)))))
na_count <- data.frame(na_count)
na_count

traindata <- Sample_data[1:200,]
head(Sample_data['id'])
dim(traindata)
View(traindata)

### Column Name 
dim(Sample_data)
?read_excel
Consumer_data=read_xlsx("./ConsumerHH_DataDict.xlsx",col_names=TRUE)
consumer <- Consumer_data[1:202,]
write.csv(consumer,'./consumer.csv')
View(consumer)

names(consumer)

?order
train<-traindata[, order(names(traindata))]
train<-train[,c(which(colnames(train)=="id"),which(colnames(train)!="id"))]
names(train)
train <- cbind(train['id'],train[,946:948],train[,2:945])
View(train)
