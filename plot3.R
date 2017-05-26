plot3<-function(filename){
        data<-read.table(filename, sep=";", header=TRUE)
        date<-as.Date(data$Date,format="%d/%m/%Y")
        Sys.setlocale("LC_TIME","English")
        time<-strptime(data$Time,format="%H:%M")
        time1<-format(time,format="%H:%M:%S")
        datetime<-paste(date,time1)
        datetime1<-strptime(datetime,format="%Y-%m-%d %H:%M:%S")
        plot(datetime1,data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
        lines(datetime1,data$Sub_metering_2,col="red")
        lines(datetime1,data$Sub_metering_3,col="blue")
        legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        
        }