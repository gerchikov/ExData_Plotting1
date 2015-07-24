source('read_hpc.R')
t <- read_hpc(c("2007/2/1", "2007/2/2"))
for(i in 1:4) source(paste('plot', i, '.R', sep = ''))
