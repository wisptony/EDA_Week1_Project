#Plot the graph
plot(data$Time,data$Sub_metering_1,type="n",ylab="Energy sub metering",
     xlab="")
lines(data$Time,data$Sub_metering_1)
lines(data$Time,data$Sub_metering_2,col="red")
lines(data$Time,data$Sub_metering_3,col="blue")
legend(x="topright",lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"))
#Save the plot
dev.copy(png,"plot3.png")
dev.off()
