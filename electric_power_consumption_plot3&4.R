household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
hpc1 <- subset(household_power_consumption, Date = "02/01/2007":"02/02/2007")
d1 <- as.Date(hpc1$Date, "%d-%m-%Y")

##plot 3
d2 <- weekdays(d1)
esm <- sum(hpc1$Sub_metering_1, hpc1$Sub_metering_2, hpc1$Sub_metering_3)
plot(d2, esm, ylab = "Energy sub metering")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

##plot4
d2 <- weekdays(d1)
esm <- sum(hpc1$Sub_metering_1, hpc1$Sub_metering_2, hpc1$Sub_metering_3)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
with(hpc1, {
  plot(d2, Global_active_power)
  plot(d2, Voltage)
  plot(d2, esm)
  plot(d2, Global_reactive_power)
})
