source("readData.R")

data <- readData()

png(file="plot2.png", width=480, height=480, bg="transparent")

plot(x=data$DateTime, y=data$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

dev.off()