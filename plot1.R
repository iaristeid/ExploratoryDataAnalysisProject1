################################################################################
## Exploratory Data Analysis Coursera Course Peer Assessments Project 1
## www.coursera.org
##
## You should create one R script called plot1.R that does the following.
## 1. Loads raw data into R
## 2. Filters data of specific dates (2007/2/1 and 2007/2/2)
## 3. Converts date and time columns into appropriate type
## 4. Opens the bitmap file plot1.png
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

png(filename="plot1.png", width=480,height=480)
hist(filteredHHPowerConsumptionData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylim=c(0,1200))
dev.off()
