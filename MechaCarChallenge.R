# import libraries
library(tidyverse)

# import csv file
mechacar_table <- read.csv("MechaCar_mpg.csv", header = TRUE, check.names = F, stringsAsFactors = F)

# perform a multiple linear regression by passing in all  columns into lm() function with mpg being the dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_table)

# use the summmary function to find  p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_table))
