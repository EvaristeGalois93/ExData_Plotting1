# plot 3 function

plot4 = function(v1, v2, v3, v4, v5, v6){
  
  # first open png connection
  png(filename = "Plot 4.png", width = 480, height = 480, units = "px")
  
  # then plot everything
  par(mfrow = c(2,2))
  
  # plot 1
  plot(v1, col = "black", type = "l", ylab = "Global Active Power", 
       xlab = "", xaxt = "n")
  axis(side = 1, at = c(1, length(v1)/2, length(v1)), labels = c("Thu","Fri","Sat"))
  
  # plot 2
  plot(v2, col = "black", type = "l", ylab = "Voltage", 
       xlab = "datetime", xaxt = "n")
  axis(side = 1, at = c(1, length(v2)/2, length(v2)), labels = c("Thu","Fri","Sat"))
  
  # plot 3
  plot(v3, col = "black", type = "l", ylab = "Energy sub meetering", 
       xlab = "", xaxt = "n")
  lines(v4, col = "red", type = "l")
  lines(v5, col = "blue", type = "l")
  axis(side = 1, at = c(1, length(v3)/2, length(v3)), labels = c("Thu","Fri","Sat"))
  legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col = c("black", "red", "blue"), lty = 1) 
  
  # plot 4
  plot(v6, col = "black", type = "l", ylab = "Global_reactive_power", 
       xlab = "datetime", xaxt = "n")
  axis(side = 1, at = c(1, length(v2)/2, length(v2)), labels = c("Thu","Fri","Sat"))
  
  # close connection      
  dev.off()
  
}