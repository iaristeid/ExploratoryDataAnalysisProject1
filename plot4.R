################################################################################
## Exploratory Data Analysis Coursera Course Peer Assessments Project 1
## www.coursera.org
##
## You should create one R script called plot4.R that does the following.
## 1. Loads raw data into R
## 2. Filters data of specific dates (2007/2/1 and 2007/2/2)
## 3. Converts date and time columns into appropriate type
## 4. Opens the bitmap file plot4.png
## 5. Plots the graph
## 6. Closes the file
################################################################################

################################################################################
## Load, filter and transform input data
################################################################################

HHPowerConsumptionData <-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
names(HHPowerConsumptionData)
filteredHHPowerConsumptionData <- HHPowerConsumptionData[(HHPowerConsumptionData$Date=="1/2/2007")|(HHPowerConsumptionData$Date=="2/2/2007"),]
filteredHHPowerConsumptionData$Date
filteredHHPowerConsumptionData$Date <- as.Date(filteredHHPowerConsumptionData$Date,"%d/%m/%Y")
filteredHHPowerConsumptionData$Date
class(filteredHHPowerConsumptionData$Date)
DateTime <- paste(filteredHHPowerConsumptionData$Date,filteredHHPowerConsumptionData$Time)
filteredHHPowerConsumptionData$Time <- strptime(DateTime,format="%d/%m/%Y %H:%M:%S")
class(filteredHHPowerConsumptionData$Time)

################################################################################
## Create device (bitmap file) and print plot
################################################################################

png(filename="plot4.png", width=480,height=480)
par(col="black")
par(mfrow = c(2, 2))
plot(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Global_active_power,ylab="Global Active Power",xlab="",type="l")
plot(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Voltage,ylab="Voltage",xlab="datetime",type="l")
plot(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Sub_metering_1,ylab="Energy sub metering",xlab="",type="l")
par(col="red")
lines(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Sub_metering_2)
par(col="blue")
lines(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Sub_metering_3)
par(col="black")
plot(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Global_reactive_power,ylab="Global_reactive_power",xlab="datetime",type="l")
dev.off()
