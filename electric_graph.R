directory <-"C:/Local/R/Programming Assignment 5/exdata_data_household_power_consumption/"
file<- "household_power_consumption.txt"
library(data.table)
#data<-fread(paste(directory, file, sep = ""), na.strings = "?")
#data$Date<-as.Date(data$Date, "%d/%m/%Y")
ShortData <- as.data.frame(filter(data, Date >="2007-02-01" & Date <= "2007-02-02"))
ShortData$Time <- as.POSIXct(strptime(paste(ShortData$Date, ShortData$Time), format="%Y-%m-%d %H:%M:%S"))
hist(ShortData$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")