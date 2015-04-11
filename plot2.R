fileName <- "household_power_consumption.txt"
allData <- read.table(fileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na="?")
sampleData <- allData[allData$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(sampleData$Date, sampleData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(sampleData$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
