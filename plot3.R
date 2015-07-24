if(!exists("t")) {
  source('read_hpc.R')
  t <- read_hpc(c("2007/2/1", "2007/2/2"))
}
png(file = "plot3.png", bg = "transparent")
plot(t$DateTime, t$Sub_metering_1, 
     type = 'l', 
     xlab = NA, 
     ylab = "Energy sub metering")
lines(t$DateTime, t$Sub_metering_2, col="red")
lines(t$DateTime, t$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = 1)
dev.off()
