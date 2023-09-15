# Getting Started with R
# Presented by Trent University Library's Maps, Data and Government Information Center
# Contact: madgichelp@trentu.ca 

#### Using R as a calculator #### 

# How to run code from the SOURCE pane:
#   Highlight the code you wish to run, and press Ctrl + Enter or Alt + Enter (Command + Enter on Mac)
#   Or place your cursor on the line you wish to run and press the Run button (top right of the source pane) 

# A multiplication
____

# Exponentiation
____

# More complex calculations: BEDMAS 
____

(1/2)*(72 + (462 * 9)) # Use brackets to ensure order of operations 

#### Challenge 1 #### 
# Using R as a calculator: Determine the resulting value of the following equation
# (x^2) + (b * x) + c
# Where x = 5, b = 8, and c = 3






#### Objects #### 
# All objects are based on real historic weather data for Peterborough, ON
# (https://climate.weather.gc.ca/historical_data/search_historic_data_e.html)

# Object Assignment and data types

# Use <- to assign values to objects

# Character data: text value, always in quotations, either "" or ''
# Any text within a single pair of quotations is a single character value
Weather_Station ___ _____
Weather_Station 

# Numeric data: numbers with or without decimals
Temp_C_01032023 ___ ___
Temp_C_01032023 

# However, to specify an integer (no decimal places), place an L at the end of the number
n_Ptbo_weatherstations ____ ____
n_Ptbo_weatherstations
# Integers use less memory than numeric values. This makes them useful
# However, if any mathematical operations are performed on an integer, it will be converted to numeric

# Logical data: can only be TRUE, T, FALSE, F, or NA values. Defined in all capital letters without quotations
Precip_11032023 __ ___
Precip_11032023
Precip_11032023 __ _
Precip_11032023 

# R names are case and spelling sensitive!
Weather_Station
weather_Station 
Wethr_Station 

# Putting an object assignment in brackets (object <- value) will create and print the object
(Max_Temp_C_01032023 <- 2.2) 
(Min_Temp_C_01032023 <- -9.9)

# Use objects in math
Temp_C_01032023^2 + 3*Max_Temp_C_01032023 + Min_Temp_C_01032023

# Calculations can also be assigned to new objects
(calculation <- Temp_C_01032023^2 + 3*Max_Temp_C_01032023 + Min_Temp_C_01032023)


##### Challenge 2 ##### 
# Using objects: Re-calculate (x^2) + (b * x) + c 
# Set x = 5, b = 8, and c = 3 then run the provided equation

x ____
b ____
c ____

(x^2) + (b * x) + c


#### Functions #### 

# Functions can be run with raw value inputs
# Determine the absolute value of 10
abs(-10) 
# Determine the exponential of 16
exp(16)
# Convert text to all capital letters
toupper("Hello world!") 

# Check data type with class
class(16)
class("Hello world!")

# Or one may use objects as function inputs
Temp_C_01032023
abs(____)
exp(____)

toupper(____)

class(Temp_C_01032023) 
class(Weather_Station)

# R has many functions available. 
# Each function has different arguments which can include input value(s), mandatory or optional arguments with or without default values
# To understand how a function works, we can pull up its help document with ?function()

# Look up the round() function's help document 
__round() 

# Look under Usage and Arguments
# Notice the round function only has a single argument, digits, with a default value of 0
# Include and change this argument to return Mean_Temp_2011_2023 with two decimal places 
Mean_Temp_2011_2023 <- 6.675573
round(Mean_Temp_2011_2023, _______) 

# Functions with multiple arguments
?rep # See more details on the repeat function

# Basic function use:
rep(1:3)

# Repeat the entire sequence 1, 2, 3, three times
rep(1:3, ____ = 3) 

# Repeat each number in the sequence 1, 2, 3, three times
rep(1:3, ____ = 3) 

# Repeat each number in the sequence three times and repeat the entire sequence three times
rep(1:3, each = 3, times = 3) 

?seq # See more details of the sequence function

seq() 

##### Challenge 3 (Multiple choice): ##### 
# From seq() documentation, identify which arguments would return the following output:
# [1] 3 7 11 15 19 23 27

# seq(3, 4, 7) 
# seq(from = 3, by = 4, length.out = 7) 
# seq(from = 3, to = 30, by = 4) 
# seq(from = 3, to = 32, by = 4) 




#### Packages #### 

______("dplyr") # Function to install the package provided in quotations 

_____(dplyr) # load an installed package

# Install the package "xlsx" using the Package Pane

# Find the package in the list and check the box to load it

help(package = "xlsx") # open the help page for all functions within a package

browseVignettes("xlsx") # Open tutorial files for a single file, if available

##### Challenge 4 ##### 
# 1. Install and load the package "beepr" by R code or package pane
______("____") # or by package pane
_____(____) # or by package pane

# Check if the package was installed and loaded by running the below function (Hint: turn on your sound) 
beep()

# If you finish early, try changing the beep() function arguments to see what happens
# Hint: ?beep




#### Data Structures #### 

##### Vector ##### 

# Make sure you run all lines!

# Define vectors with the combine function: c()
(Months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
(Mean_month_temp_Ptbo_2021 <- __(-5.91, -7.69, 0.63, 6.42, 11.52, 18.78, 19.5, 20.81, 14.58, NA, 1.49, -1.27))
(Snow_Present_Ptbo_2021 <- __(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE))

# Inspect the Vector
head(Mean_month_temp_Ptbo_2021, n = 6) # returns the first six values
tail(Mean_month_temp_Ptbo_2021, n = 6) # returns the last six values
length(Mean_month_temp_Ptbo_2021) # how many values are in the vector

# Assign names to vector values to improve interpretation 
Mean_month_temp_Ptbo_2021
names(Mean_month_temp_Ptbo_2021) <- ____ # assign column names to vector to aid interpretation
Mean_month_temp_Ptbo_2021 # View the vector, now with names

# Use vectors to answer basic questions

# Determine total number of individuals observed
sum(Mean_month_temp_Ptbo_2021) # determine the sum of a vector
Mean_month_temp_Ptbo_2021 # examine the vector
?mean
mean(Mean_month_temp_Ptbo_2021, _____) # determine the sum of a vector, excluding NA values


##### Data frame ##### 


# Create a data frame from vectors
Temp_May_2021 <- data.frame(Date = c("2021-5-1", "2021-5-2", "2021-5-3", "2021-5-4", "2021-5-5", 
                                     "2021-5-6", "2021-5-7", "2021-5-8", "2021-5-9", "2021-5-10", 
                                     "2021-5-11", "2021-5-12", "2021-5-13", "2021-5-14", "2021-5-15", 
                                     "2021-5-16", "2021-5-17", "2021-5-18", "2021-5-19", "2021-5-20", 
                                     "2021-5-21", "2021-5-22", "2021-5-23", "2021-5-25", "2021-5-26", 
                                     "2021-5-27", "2021-5-28", "2021-5-29", "2021-5-30", "2021-5-31"),
                            Station = rep("Peterborough A", 30),    
                            MeanTemp_C = c(4.4, 6.8, 10.2, 9.1, 8, 7.1, 5.8, 6.7, 6.6, 7.4, 6.2, 10.7, 
                                           12.8, 11.6, 12.2, 12.7, 12.7, 16.6, 17.7, 19.8, 21, 21.1, 15.2, 
                                           19.2, 17.2, 11.7, 6, 8.4, 9.4, 11.2),
                            MinTemp_C = c(-2.3, 0.6, 6.7, 6.3, 4.2, 1.1, 0.2, -0.9, 0.2, 0.4, 1, 3.1, 
                                          4.3, 1.9, 1.6, 2.8, 2.4, 5.9, 7.7, 10.7, 11, 16.7, 7.6, 10.1, 
                                          8.9, 6.6, 1.7, -1.2, -1.5, -0.3),
                            MaxTemp_C = c(11, 13, 13.6, 11.9, 11.7, 13, 11.4, 14.3, 13, 14.3, 11.3, 18.3, 
                                          21.3, 21.2, 22.8, 22.5, 22.9, 27.3, 27.6, 28.9, 30.9, 25.4, 22.7, 
                                          28.3, 25.5, 16.7, 10.3, 18, 20.2, 22.6),
                            Source = rep("Government of Canada", 30))


head(Temp_May_2021, n = 6) # View the first six rows
tail(Temp_May_2021, n = 6) # View the last six rows
summary(Temp_May_2021) # See descriptive statistics per column of the data frame

# Assign column names to all columns in a data frame
names(Temp_May_2021) ____ _("Date", "Station", "Mean", "Min", "Max", "Reference")
head(Temp_May_2021, n = 6)

# Select a single column within a data frame
# Using the $ allows one to select a data frame's column as a vector
Temp_May_2021 ____ 

# Apply data frame column values within a function
mean(Temp_May_2021 ____, _____) # Determine the average temperature in May 2021


##### Check data structure #####

class(Months)
is.vector(Months) # the is.<data type of structure>() function can be used to check all data types and structures
class(Temp_May_2021)
is.data.frame(Temp_May_2021)

#### Application #### 

##### Import ##### 

# Import Data and assign it to a name
weather <- read.csv("E:/R_Workshop/GettingStarted/Ptbo_TempC_2011_2021.csv", 
                    colClasses = c("Date", "character","character","character","factor","character",
                                   "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

# Inspect Data
head(weather)
str(weather)
summary(weather)

##### Explore: Visualize ##### 

# Visual comparison of raw values
# Plot 2011 line
plot(MaxTemp_C ~ DOY, data = subset(weather, Year == 2011), type = "l", 
     frame = FALSE, pch = 19,
     xlim = c(0, 350),
     col = "red", xlab = "Day", ylab = "Max daily temperature (\u00B0C)", 
     lty = 1, lwd = 1)

# Add 2021 line
lines(MaxTemp_C ~ DOY, data = subset(weather, Year == 2021), 
      type = "l",col = "blue",
      lty = 2, lwd = 1)

# Add a legend
legend("topleft", legend = c("2011", "2021"),
       col = c("red", "blue"), lty = 1:2, cex = 1.25)

# Visual comparison of distribution
boxplot(MaxTemp_C ~ Year, data = weather,
        xlab = "Year", ylab = "Max daily temperature (\u00B0C)")

# Most statistical tests require data to be normally distributed
# We can quickly check if data is normally distributed with QQ Plots
# More info: https://data.library.virginia.edu/understanding-q-q-plots/
# If the data is normally distributed, it will follow the line

# Check if mean is normally distributed
qqnorm(weather$MaxTemp_C, # Variable to test for normal distribution
       pch = 1, # symbol code: http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r
       main = "Mean Temperature QQ plot") # Plot title

qqline(weather$MaxTemp_C, # Variable to test for normal distribution
       col = "steelblue", # qqline (expected normal distribution) colour
       lwd = 2) # line width

##### Explore: Transform ##### 

# The data above are not normally distributed, therefore we need to transform them
# There are many ways to transform data.

# For example, transform by calculating the square root of Mean Temp + absolute value of the lowest mean temp (this ensures all values are positive before the square root)
weather$MaxTemp_SQRT<- sqrt(weather$MaxTemp_C + abs(min(weather$MeanTemp_C)))

qqnorm(weather$MaxTemp_SQRT, # Variable to test for normal distribution
       pch = 1, # symbol code: http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r
       main = "Square root Max Temperature QQ plot") # Plot title

qqline(weather$MaxTemp_SQRT, # Variable to test for normal distribution
       col = "steelblue", # qqline (expected normal distribution) colour
       lwd = 2) # line width

# To save time the data has already been transformed using Ordered Quantile normalizing transformation
# Check normalization again for each variable after transformation
qqnorm(weather$MaxTemp_transformed, # variable to test for normalization
       pch = 1, # symbol code: http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r
       main = "Transformed Max Temperature QQ plot") # Plot title

qqline(weather$MaxTemp_transformed, 
       col = "steelblue", # color of qqline
       lwd = 2) # line width

##### Explore: Analyze ##### 

# Conduct a t-test on transformed mean temperature as it is normally distributed
t.test(MaxTemp_transformed ~ Year, data = weather, paired = TRUE) # Compare mean temperature between 2011 and 2021

##### Communicate: Visualize ##### 

# Visualize difference in mean temperature with a bar plot

# Create summary data (mean and standard error)
data_summary <- aggregate(MaxTemp_C ~ Year, data = weather,       
                          function(x) c(mean = mean(x),
                                        se = sd(x) / sqrt(length(x))))

# Create a box plot
weather_barplot <- barplot(data_summary$MaxTemp_C[,1] ~ Year,  
                           data_summary,
                           ylim = c(0, 20),
                           ylab = "Temperature (\u00B0C)")
# Add error bars
arrows(x0 = weather_barplot,                           # Add error bars
       y0 = data_summary$MaxTemp_C[,1] + data_summary$MaxTemp_C[,2],
       y1 = data_summary$MaxTemp_C[,1]- data_summary$MaxTemp_C[,2],
       angle = 90,
       code = 3,
       length = 0.1)


# Export plot with Plots > Export tool 

# The max daily temperatures significantly increased between 2011 and 2021