plot4<-function(filename){
        data<-read.table(filename, sep=";", header=TRUE)
        date<-as.Date(data$Date,format="%d/%m/%Y")
        Sys.setlocale("LC_TIME","English")
        time<-strptime(data$Time,format="%H:%M")
        time1<-format(time,format="%H:%M:%S")
        datetime<-paste(date,time1)
        datetime1<-strptime(datetime,format="%Y-%m-%d %H:%M:%S")
        par(mfrow=c(2,2))
        plot1(filename)
        plot(datetime1,data$Voltage,type="l",xlab="datetime",ylab="Voltage")
        plot3(filename)
        plot(datetime1,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
}