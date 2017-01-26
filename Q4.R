png("plot4.png")
#set parameters globally
par(mfcol=c(2,2))
#Create Plot 1
plot(data$Time,data$Global_active_power,type="l",ylab="Global Active Power",
     xlab="")
#Create Plot 2
plot(data$Time,data$Sub_metering_1,type="n",ylab="Energy sub metering",
     xlab="")
lines(data$Time,data$Sub_metering_1)
lines(data$Time,data$Sub_metering_2,col="red")
lines(data$Time,data$Sub_metering_3,col="blue")
legend(x="topright",lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),bty="n")
#Create Plot 3
plot(data$Time,data$Voltage,type="l",ylab="Voltage",xlab="datetime")
#Create Plot 4
plot(data$Time,data$Global_reactive_power,ylab="Global_reactive_power",
     xlab="datetime",type="l")
#Create png file
dev.off()
