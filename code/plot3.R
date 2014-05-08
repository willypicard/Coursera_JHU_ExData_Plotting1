#setwd("code")
source("loadData.R")

png("../plots/plot3.png")

Sys.setlocale(category="LC_ALL", locale="C") 

plot(data$Sub_metering_1 ~ as.POSIXct(data$Date2, tz="EST"), 
     type="l",
     xlab = "",
     ylab = "Energy sub metering")

lines(data$Sub_metering_2 ~ as.POSIXct(data$Date2, tz="EST"), col = "red")
lines(data$Sub_metering_3 ~ as.POSIXct(data$Date2, tz="EST"), col = "blue")
legend(x="topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"),
       lwd = 1)

dev.off()
