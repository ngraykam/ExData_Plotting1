## produce Plot2 graph
plot(plotData$convertedTime, plotData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power(kilowatts)")
##
## Save the file and close the device
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()