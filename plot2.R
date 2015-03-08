## exdata-012
## Course Project 1 - Making plots
## Assignment: reproduce four plots that explore the Electric power consumption
## dataset. Downloaded from:
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

## Import data file, subsetting relevant dates, converting date/time variables
## to R date/time classes
hpc <- read.table("household_power_consumption.txt", header=TRUE,
                  na.strings="?", sep=";")
hpc_s <- hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ),]
hpc_s$DateTime <- strptime(paste(hpc_s$Date, hpc_s$Time), "%d/%m/%Y %H:%M:%S")

## Set system locale language to US English
Sys.setlocale("LC_TIME", "English")

## Plot 2
## Time plot of Global Active Power to a png file
png("plot2.png")
plot(hpc_s$DateTime, hpc_s$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()