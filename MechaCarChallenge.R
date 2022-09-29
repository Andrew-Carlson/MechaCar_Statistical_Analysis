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
