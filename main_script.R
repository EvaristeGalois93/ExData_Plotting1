# Assignment 1 - Exploratory Data Analysis

# =============================================================================
# =============================================================================

# Our overall goal here is simply to examine how household energy usage varies 
# over a 2-day period in February, 2007. Your task is to reconstruct the following 
# plots below, all of which were constructed using the base plotting system.

# First you will need to fork and clone the following GitHub repository: 
# https://github.com/rdpeng/ExData_Plotting1

# For each plot you should

# Construct the plot and save it to a PNG file with a width of 480 pixels and a 
# height of 480 pixels. Name each of the plot files as plot1.png, plot2.png, etc.
# Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the 
# corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. 
# Your code file should include code for reading the data so that the plot can be 
# fully reproduced. You must also include the code that creates the PNG file.
# Add the PNG file and R code file to the top-level folder of your git repository 
# (no need for separate sub-folders)

# When you are finished with the assignment, push your git repository to GitHub 
# so that the GitHub version of your repository is up to date. There should be 
# four PNG files and four R code files, a total of eight files in the top-level 
# folder of the repo.

# =============================================================================
# =============================================================================

if(!file.exists("./data")){
  dir.create("./data")
}
unzip("./exdata_data_household_power_consumption.zip", exdir = "./data")

power_cons = read.table("./data/household_power_consumption.txt", sep = ";", header = FALSE)

mydates = c("1/2/2007", "2/2/2007")

sub_power = subset(power_cons, Date %in% mydates)

# plot 1
source("./plot1.R")
plot1(as.numeric(sub_power$Global_active_power))

# plot 2
source("./plot2.R")
plot2(as.numeric(sub_power$Global_active_power))

# plot 3
source("./plot3.R")
plot3(as.numeric(sub_power$Sub_metering_1),as.numeric(sub_power$Sub_metering_2),
      as.numeric(sub_power$Sub_metering_3))

# plot 4
source("./plot4.R")
plot4(as.numeric(sub_power$Global_active_power),as.numeric(sub_power$Voltage),
      as.numeric(sub_power$Sub_metering_1),as.numeric(sub_power$Sub_metering_2),
      as.numeric(sub_power$Sub_metering_3),as.numeric(sub_power$Global_reactive_power))



