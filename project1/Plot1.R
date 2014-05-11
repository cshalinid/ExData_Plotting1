hdr<-read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=2)
data<-read.table("household_power_consumption.txt",header=FALSE,sep=";",nrows=2880,skip=66637)
names(data)<-names(hdr)

png(file="Plot1.png", width=480,height=480)
hist(data$Global_active_power,breaks=11,col=2,xlab="Global_active_power (kilowatts)",main="Global_active_power")
dev.off()

