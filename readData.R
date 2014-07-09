# install.packages("sqldf")
library(sqldf)

readData <- function() {
    # download and unzip data file
    dataFileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    if (!file.exists("household_power_consumption.txt")) {
        if (!file.exists("household_power_consumption.zip")) {
            download.file(dataFileUrl, destfile="household_power_consumption.zip")
        }
        unzip("household_power_consumption.zip")
    }
    # load data
    data <- read.csv.sql("household_power_consumption.txt", sep=";",
                         sql="select * from file 
                              where Date='1/2/2007' or Date='2/2/2007'")
    data$DateTime <- as.POSIXct(strptime(paste(data$Date, data$Time, sep=" "), 
                                         format ="%d/%m/%Y %H:%M:%S"))
    data
}
