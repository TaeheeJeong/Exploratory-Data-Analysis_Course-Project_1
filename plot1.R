# Assignment: Exploratory Data Analysis_Course Project_1
# author: Taehee Jeong
# date: 05/20/2016
# Individual household electric power consumption Data Set

## Load data (big size)
#bigfile.sample <- read.csv("household_power_consumption.txt", stringsAsFactors=FALSE, sep=";",header=T, nrows=10)

bigfile.raw <- read.csv("household_power_consumption.txt", stringsAsFactors=FALSE, sep=";",header=T,  nrows=2075259)

#subset dataset
smalldata<-subset(bigfile.raw,Date=="2007-02-01")
smalldata2<-subset(bigfile.raw,Date=="2007-02-02")
newdata<-rbind(smalldata,smalldata2)

## Making Plots
par(las=1)
hist(newdata$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
# save plot as png file
dev.copy(png,file="plot1.png")
dev.off()

