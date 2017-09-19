## produce Plot4 graph
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(plotData, {
  plot(Global_active_power~convertedTime, type="l", ylab="Global Active Power", xlab="")
  plot(Voltage~convertedTime, type="l", ylab="Voltage", xlab="datetime")
  plot(Sub_metering_1~convertedTime, type="l", ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~convertedTime,col='Red')
  lines(Sub_metering_3~convertedTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~convertedTime, type="l", ylab="Global_Reactive_Power",xlab="datetime")
})
## Save the file and close the device
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
