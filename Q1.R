#reading data
rawdata<-read.table("household_power_consumption.txt",header=T,sep=";",
                    stringsAsFactors = FALSE, na.strings="?",
                    colClasses = c("character","character",rep("numeric",7)))
#Getting data on the two relevant dates
data<-rawdata[grep(pattern="^1/2/2007$|^2/2/2007$",rawdata$Date),]
#Convert each variable to correct atomic class
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
data$Time<-strptime(data$Time,format="%H:%M:%S")
#Plotting
with(data,hist(Global_active_power,xlim=c(0,6),
               col="red",main="Global Active Power",
               xlab="Global Active Power(kilowatts)"))
#Create png file with a size of 480*480
dev.copy(png,"plot1.png",width=480,height=480,units="px")
dev.off()
