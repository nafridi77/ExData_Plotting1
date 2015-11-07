dataFile <- "household_power_consumption.txt"
newdata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(newdata)
names(newdata)

Datasubset <- newdata[newdata$Date %in% c("1/2/2007","2/2/2007") ,]

names(Datasubset)

GlobalActivePower <- as.numeric(Datasubset$Global_active_power)
hist(GlobalActivePower, col="red", main= "Global Active Power", xlab= "Global Active Power ( Kilowatts)")


png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main= "Global Active Power", xlab= "Global Active Power ( Kilowatts)")
dev.off()
