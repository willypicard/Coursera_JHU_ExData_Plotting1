setwd("code")
source("loadData.R")

png("../plots/plot4.png")

Sys.setlocale(category="LC_ALL", locale="C") 

par(mfcol = c(2,2))
par(mar=c(4,4,3,3))

plot(data$Global_active_power ~ as.POSIXct(data$Date2, tz="EST"), 
     type="l",
     xlab = "",
     ylab = "Global Active Power")



plot(data$Sub_metering_1 ~ as.POSIXct(data$Date2, tz="EST"), 
     type="l",
     xlab = "",
     ylab = "Energy sub metering")

lines(data$Sub_metering_2 ~ as.POSIXct(data$Date2, tz="EST"), col = "red")
lines(data$Sub_metering_3 ~ as.POSIXct(data$Date2, tz="EST"), col = "blue")
legend(x="topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"),
       lwd = 1,
       bty = "n")


plot(data$Voltage ~ as.POSIXct(data$Date2, tz="EST"), 
     type="l",
     xlab = "datetime",
     ylab = "Voltage")

with(data, plot(Global_reactive_power ~ as.POSIXct(Date2, tz="EST"), 
     type="l",
     xlab = "datetime"
     ))


dev.off()
