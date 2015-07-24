read_hpc <- function(days) {
  # call me with a vector of Dates, e.g.:
  # source('read_hpc.R'); t <- read_hpc(c("2007/2/1", "2007/2/2"))
  
  # Let's see if we can read straight from a ZIP archive:
  con <- unz("exdata-data-household_power_consumption.zip", 
             "household_power_consumption.txt")
  t <- read.table(con, header = T, sep = ';', na.strings = '?', as.is = T)
  # close(con)  # fails! I guess read.table() closes it.
  
  # Filter:
  t <- t[t$Date %in% gsub("(^|/)0", "\\1", format.Date(days, "%d/%m/%Y")), ]
  
  # Convert:
  t$DateTime <- as.POSIXct(paste(t$Date, t$Time), format="%d/%m/%Y %H:%M:%S")
  
  return(t)
}
