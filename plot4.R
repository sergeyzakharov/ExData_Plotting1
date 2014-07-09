source("readData.R")

data <- readData()

png(file="plot4.png", width=480, height=480, bg="transparent")

par(mfrow=c(2,2))

# First plot
plot(x=data$DateTime, y=data$Global_active_power, type="l",
     ylab="Global Active Power", xlab="")

# Second plot
plot(x=data$DateTime, y=data$Voltage, type="l",
     ylab="Voltage", xlab="datetime")

# Third plot
plot(x=data$DateTime, y=data$Sub_metering_1, type="l",
     ylab="Energy sum metering", xlab="")

lines(x=data$DateTime, y=data$Sub_metering_2, col="red")
lines(x=data$DateTime, y=data$Sub_metering_3, col="blue")

legend("topright", lty=c(1,1,1), bty="n", col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Fourth plot
plot(x=data$DateTime, y=data$Global_reactive_power, type="l",
     ylab="Global_reactive_power", xlab="datetime")

dev.off()