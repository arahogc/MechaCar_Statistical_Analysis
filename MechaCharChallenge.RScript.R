#Deliverable 1 
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #creates dataframe from csv 

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)) #generate summary statistics

#Deliverable 2 
SuspCoil_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #creates dataframe from csv 

Total_Summary <- SuspCoil_Table %>% summarize(Mean=mean(PSI), Medain=median(PSI), Variance=(var(PSI)), SD=(sd(PSI, na.rm = FALSE)), .groups = 'keep') #create summary table for PSI column

Lot_Summary <- SuspCoil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Medain=median(PSI), Variance=(var(PSI)), SD=(sd(PSI, na.rm = FALSE)), .groups = 'keep') #create summary table for each manufacturing lot

#Deliverable 3 

t.test((SuspCoil_Table$PSI),mu=1500) #single T test for PSI

t.test(subset(SuspCoil_Table, Manufacturing_Lot == 'Lot1')$PSI, mu=1500) #single T test for PSI of Lot1
t.test(subset(SuspCoil_Table, Manufacturing_Lot == 'Lot2')$PSI, mu=1500) #single T test for PSI of Lot2
t.test(subset(SuspCoil_Table, Manufacturing_Lot == 'Lot3')$PSI, mu=1500) #single T test for PSI of Lot1
