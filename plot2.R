## convert data and time to specific format
data$Date <- as.Date(data$Date, format = '%Y/%m/%d')
data$Time <- as.POSIXct(paste(data$Date, data$Time))


## plot 2
png(filename = 'plot2.png', width = 480, height = 480, units='px')
plot(data$Time, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()