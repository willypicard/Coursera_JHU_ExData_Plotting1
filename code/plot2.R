#setwd("code")
source("loadData.R")

png("../plots/plot2.png")

Sys.setlocale(category="LC_ALL", locale="C") 

plot(data$Global_active_power ~ as.POSIXct(data$Date2, tz="EST"), 
     type="l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()
