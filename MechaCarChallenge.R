# import libraries
library(tidyverse)

# import mpg csv file
mechacar_table <- read.csv("MechaCar_mpg.csv", header = TRUE, check.names = F, stringsAsFactors = F)

# perform a multiple linear regression by passing in all  columns into lm() function with mpg being the dependent variable
linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_table)

# use the summmary function to find  p-value and the r-squared value for the linear regression model.
summary_mpg <- summary(linear_regression)

# view R-squared
summary(linear_regression)$r.squared

# import csv file with suspension coil csv data
suspension_table <- read.csv("Suspension_Coil.csv", header = TRUE, check.names = F, stringsAsFactors = F)

# create summary statistics table 
total_summary <- suspension_table %>% summarize(Mean=mean(suspension_table$PSI), Median=median(suspension_table$PSI), Variance=var(suspension_table$PSI), SD=sd(suspension_table$PSI))

# create  summary statistics for each lot using the group_by() functions
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# use the t.test() function on suspension_table to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch

# Note level of significance is 0.05

t.test(suspension_table$PSI, mu = 1500)

# Ho: mu = 1500
# Ha: mu <> 1500 (<>: not equal to)
# p-value is 0.06028 which is > 0.05, therefore we fail to reject the null hypothesis, and the alternate hypothesis is true.

# Perform a t-test to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
#for Lot1:
t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot1"), mu =1500)

#for Lot2
t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot2"), mu =1500)

#for Lot3
t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot3"), mu =1500)