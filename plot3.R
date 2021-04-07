# plot 3 function

plot3 = function(v1, v2, v3){
  
  # first open png connection
  png(filename = "Plot 3.png", width = 480, height = 480, units = "px")
  
  # then plot histograms
  plot(v1, col = "black", type = "l", ylab = "Energy sub meetering", 
       xlab = "", xaxt = "n")
  lines(v2, col = "red", type = "l")
  lines(v3, col = "blue", type = "l")
  axis(side = 1, at = c(1, length(v1)/2, length(v1)), labels = c("Thu","Fri","Sat"))
  legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        col = c("black", "red", "blue"), lty = 1)  
  # close connection      
  dev.off()
  
}