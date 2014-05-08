rm(list = ls())
data_all = read.csv("../data/household_power_consumption.txt", sep = ";", na.strings = "?")
data = subset(data_all, Date == "1/2/2007" | Date == "2/2/2007")
rm (data_all)
data$Date2 = strptime(paste(data$Date, data$Time), "%d/%m/%Y %X")
head(data)