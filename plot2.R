
HHPowerConsumptionData <-read.table("household_power_consumption.txt",header=TRUE,sep=";")
names(HHPowerConsumptionData)
filteredHHPowerConsumptionData <- HHPowerConsumptionData[(HHPowerConsumptionData$Date=="1/2/2007")|(HHPowerConsumptionData$Date=="2/2/2007"),]
filteredHHPowerConsumptionData$Date
filteredHHPowerConsumptionData$Date <- as.Date(filteredHHPowerConsumptionData$Date,"%d/%m/%Y")
filteredHHPowerConsumptionData$Date
class(filteredHHPowerConsumptionData$Date)
DateTime <- paste(filteredHHPowerConsumptionData$Date,filteredHHPowerConsumptionData$Time)
filteredHHPowerConsumptionData$Time <- strptime(DateTime,format="%d/%m/%Y %H:%M:%S")
class(filteredHHPowerConsumptionData$Time)

png(filename="plot2.png", width=480,height=480)
plot(filteredHHPowerConsumptionData$Time,filteredHHPowerConsumptionData$Global_active_power,ylab="Global Active Power (kilowatts)",xlab="",type="l")
dev.off()
