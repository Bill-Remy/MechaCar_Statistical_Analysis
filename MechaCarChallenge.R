# Script for Deliverable 1

library(dplyr) # Load dplyr library
##
mecha_cars <- read.csv('c:/users/bill remy/data_analytics/r_analysis/MechaCar_Statistical_Analysis/mechacar_mpg.csv') # read data into a data frame

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, data = mecha_cars) # create multiple regression of data frame
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, data = mecha_cars))# generate summary statistics


# Script for Deliverable 2
# Sample Summary Statistics of PSI
coil_data <- read.csv('c:/users/bill remy/data_analytics/r_analysis/MechaCar_Statistical_Analysis/suspension_coil.csv') # read data into a data frame

total_summary <-  coil_data %>% summarise(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(total_summary)

#Lost Summary Statistics
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI))
head(lot_summary)



# Ssubset each lot 
Lot_1 = subset(coil_data, Manufacturing_Lot == "Lot1", select = PSI)
Lot_2 = subset(coil_data, Manufacturing_Lot == "Lot2", select = PSI)
Lot_3 = subset(coil_data, Manufacturing_Lot == "Lot3", select = PSI)

#Compare to population mean
t.test(Lot_1$PSI,mu=mean(coil_data$PSI))
t.test(Lot_2$PSI,mu=mean(coil_data$PSI))
t.test(Lot_3$PSI,mu=mean(coil_data$PSI))


# Compare lot samples with two sample t-test
t.test(Lot_1$PSI,Lot_2$PSI, paired = T)
t.test(Lot_1$PSI,Lot_3$PSI, paired = T)
t.test(Lot_2$PSI,Lot_3$PSI, paired = T)
