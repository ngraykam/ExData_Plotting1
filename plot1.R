setwd("D:/Data/Google Drive/00-Big Data/00-Data Science Study - Coursera/99-R_Coding")
file_URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_downloaded <- "./Data/household_power_consumption.zip"
file_extracted <- "./Data/household_power_consumption.txt"
##
if (!file.exists(file_extracted)) {
  download.file(file_URL, file_downloaded)
  unzip(file_downloaded, overwrite = T, exdir = "./Data")
}
##
## read the table
plotData <- read.table(file_extracted, header=T, sep=";", na.strings="?")
##
## remove rows with NA values
plotData <- plotData[complete.cases(plotData),]
##
## filter the data set from 2007-02-01 to 2007-02-02
plotData <- subset(plotData, plotData$Date == "1/2/2007" | plotData$Date == "2/2/2007")
##
## convert Date and Time variables to Date/Time classes in R
convertedTime <-strptime(paste(plotData$Date, plotData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
plotData <- cbind(convertedTime, plotData)
##
##
## produce Plot1 graph
hist(plotData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
##
## Save the file and close the device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
