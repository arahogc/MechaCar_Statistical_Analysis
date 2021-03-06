#Deliverable 1 
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #creates dataframe from csv 

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)) #generate summary statistics

#Deliverable 2 
SuspCoil_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #creates dataframe from csv 

Total_Summary <- SuspCoil_Table %>% summarize(Mean=mean(PSI), Medain=median(PSI), Variance=(var(PSI)), SD=(sd(PSI, na.rm = FALSE)), .groups = 'keep') #create summary table for PSI column

Lot_Summary <- SuspCoil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Medain=median(PSI), Variance=(var(PSI)), SD=(sd(PSI, na.rm = FALSE)), .groups = 'keep') #create summary table for each manufactoring lot
