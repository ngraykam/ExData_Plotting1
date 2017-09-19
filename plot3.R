## produce Plot3 graph
lines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(plotData$convertedTime, plotData$Sub_metering_1, type="l", col=lines[1], xlab="", ylab="Energy sub metering")
lines(plotData$convertedTime, plotData$Sub_metering_2, col=lines[2])
lines(plotData$convertedTime, plotData$Sub_metering_3, col=lines[3])
legend("topright", legend=labels, col=lines, lty="solid")
##
## Save the file and close the device
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()