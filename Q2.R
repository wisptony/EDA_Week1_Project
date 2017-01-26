#Convert Date and time
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
data$Time<-strptime(paste(data$Date,data$Time),
                    format="%Y-%m-%d %H:%M:%S")
#Plot the graph
plot(data$Time,data$Global_active_power,type="l",ylab="Global Active Power",
     xlab="")
#Save the graph
dev.copy(png,"plot2.png",width=480,height=480,units="px")
dev.off()
