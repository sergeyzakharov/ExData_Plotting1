source("readData.R")

data <- readData()

png(file="plot3.png", width=480, height=480, bg="transparent")

plot(x=data$DateTime, y=data$Sub_metering_1, type="l",
     ylab="Energy sum metering", xlab="")

lines(x=data$DateTime, y=data$Sub_metering_2, col="red")
lines(x=data$DateTime, y=data$Sub_metering_3, col="blue")

legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()