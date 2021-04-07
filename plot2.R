# plot 2 function

plot2 = function(mydata){
  
  # first open png connection
  png(filename = "Plot 2.png", width = 480, height = 480, units = "px")
  
  # then plot histograms
  plot(mydata, type = "l", ylab = "Global Active Power (kilowatts)", 
       xlab = "", xaxt = "n")
  axis(side = 1, at = c(1, length(mydata)/2, length(mydata)), labels = c("Thu","Fri","Sat"))
  
  # close connection      
  dev.off()
  
}