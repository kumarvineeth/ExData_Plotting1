#Reading and Annotating power usage data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power",
                  "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2",
                  "Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Plotting "Global Active Power" histogram
hist(as.numeric(as.character(subpower$Global_active_power)), 
     col="Red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
#copy to PNG file
dev.copy(png, file = "Plot1.png", width = 480, height = 480)
dev.off()

