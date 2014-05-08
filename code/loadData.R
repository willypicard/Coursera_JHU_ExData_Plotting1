rm(list = ls())
DATA_DIR = "../data"
UNZIPPED_FILE_DATA = "household_power_consumption.txt"
FILE_DATA = paste(DATA_DIR, UNZIPPED_FILE_DATA, sep="/")
ZIP_FILE_DATA = paste(FILE_DATA, "zip", sep = ".")
URL_DATA = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

old_wd = getwd()
if (!file.exists(DATA_DIR)){
  dir.create(DATA_DIR)
}
setwd(DATA_DIR)
if (!file.exists(UNZIPPED_FILE_DATA)){
  download.file(URL_DATA, ZIP_FILE_DATA)
  
  unzip(ZIP_FILE_DATA)
  file.remove(ZIP_FILE_DATA)
}
setwd(old_wd)

data_all = read.csv("../data/household_power_consumption.txt", sep = ";", na.strings = "?")
data = subset(data_all, Date == "1/2/2007" | Date == "2/2/2007")
rm (data_all)
data$Date2 = strptime(paste(data$Date, data$Time), "%d/%m/%Y %X")
