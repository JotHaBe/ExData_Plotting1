fileName <- "household_power_consumption.txt"
allData <- read.table(fileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na="?")
sampleData <- allData[allData$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(sampleData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
