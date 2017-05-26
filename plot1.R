plot1<-function(filename){
data<-read.table(filename, sep=";", header=TRUE)
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
}