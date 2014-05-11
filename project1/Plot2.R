hdr<-read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=2)
data<-read.table("household_power_consumption.txt",header=FALSE,sep=";",nrows=2880,skip=66637)

names(data)<-names(hdr)

data$datetime<-as.POSIXct((paste(data[,1],data[,2],sep=",",format="%m/%d/%Y,%H:%M:%S")))

png(file="Plot2.png", width=480,height=480)

plot(data$Time,data$Global_active_power,type="l", ylab="Global_active_power (kilowatts)",xaxt="n", xaxp = c(1, 3, 2),lwd=0.25)

axis(1,at=c(1,700,1400),labels=c("Thu","Fri","Sat"))

dev.off()

