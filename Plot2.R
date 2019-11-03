household_power_consumption <- read.csv("C:/Users/Punz/Desktop/Corsera/household_power_consumption.txt", sep=";")
hpc = household_power_consumption
subhpc = subset(hpc,hpc$Date=="1/2/2007" | hpc$Date =="2/2/2007")
subhpc$Date = as.Date(subhpc$Date, format="%d/%m/%Y")
subhpc$Time = strptime(subhpc$Time, format="%H/%M/%S")
subhpc[1:1440,"Time"] = format(subhpc[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subhpc[1441:2880,"Time"] = format(subhpc[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
plot(subhpc$Time,as.numeric(as.character(subhpc$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 
title(main="Global Active Power Vs Time")