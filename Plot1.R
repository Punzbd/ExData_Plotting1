household_power_consumption <- read.csv("C:/Users/Punz/Desktop/Corsera/household_power_consumption.txt", sep=";")
hpc = household_power_consumption
subhpc = subset(hpc,hpc$Date=="1/2/2007" | hpc$Date =="2/2/2007")
hist(as.numeric(as.character(subhpc$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")