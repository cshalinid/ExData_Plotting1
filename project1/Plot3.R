hdr<-read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=2)
data<-read.table("household_power_consumption.txt",header=FALSE,sep=";",nrows=2880,skip=66637)
names(data)<-names(hdr)
data$datetime<-as.POSIXct((paste(data[,1],data[,2],sep=",",format="%m/%d/%Y,%H:%M:%S")))
png(file="Plot3.png", width=480,height=480)


plot(data$Time,data$Sub_metering_1,type="n", ylab="Energy sub metering",xaxt="n", xaxp = c(1, 3, 2),)
points(data$Time,data$Sub_metering_1,type="l", col="black",ylab="Energy sub metering")
points(data$Time,data$Sub_metering_2,type="l", col="red",ylab="Energy sub metering")
points(data$Time,data$Sub_metering_3,type="l", col="blue",ylab="Energy sub metering")

axis(1,at=c(1,700,1400),labels=c("Thu","Fri","Sat"))

dev.off()
