household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
hpc1 <- subset(household_power_consumption, Date = "02/01/2007":"02/02/2007")
d1 <- as.Date(hpc1$Date, "%d-%m-%Y")

##plot 2
d2 <- weekdays(d1)
plot(d2, hpc1$Global_active_power, ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()