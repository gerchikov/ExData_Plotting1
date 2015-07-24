if(!exists("t")) {
  source('read_hpc.R')
  t <- read_hpc(c("2007/2/1", "2007/2/2"))
}
png(file = "plot2.png", bg = "transparent")
plot(t$DateTime, t$Global_active_power, 
     type = 'l', 
     xlab = NA, 
     ylab = "Global Active Power (kilowatts)")
dev.off()
