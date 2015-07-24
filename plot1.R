if(!exists("t")) {
  source('read_hpc.R')
  t <- read_hpc(c("2007/2/1", "2007/2/2"))
}
png(file = "plot1.png", bg = "transparent")
hist(t$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()
