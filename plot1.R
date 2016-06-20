household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
hpc1 <- subset(household_power_consumption, Date = "02/01/2007":"02/02/2007")
d1 <- as.Date(hpc1$Date, "%d-%m-%Y")

##plot 1
hist(hpc1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)")
title(main = "Global Active Power")
dev.copy(png, file = "plot1.png") 
dev.off()