# plot 1 function

plot1 = function(mydata){
  
  # first open png connection
  png(filename = "Plot 1.png", width = 480, height = 480, units = "px")
  
  # then plot histograms
  hist(mydata,
       main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
       col = "red",
       ylim = c(0,1200), xlim = c(0,6))
  
  # close connection      
  dev.off()
  
}