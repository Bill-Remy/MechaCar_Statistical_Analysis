library(dplyr) # Load dplyr library
##
mecha_cars <- read.csv('c:/users/bill remy/data_analytics/r_analysis/MechaCar_Statistical_Analysis/mechacar_mpg.csv') # read data into a data frame

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, data = mecha_cars) # create multiple regression of data frame
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, data = mecha_cars))# generate summary statistics
