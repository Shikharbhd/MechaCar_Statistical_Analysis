### CHALLENGE 15: DELIVERABLE 1

#load dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

# Perform summary Using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)) 



### CHALLENGE 15: DELIVERABLE 2

# Import and read in the Suspension_Coil.csv file as a table
Suspension <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# Create a total_summary dataframe using the summarize() function
total_summary <- Suspension %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.                                                                
lot_summary <- Suspension  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')                                      

#box plot: PSI Whole lot
#plt1 <- ggplot(mecha_coil,aes(y=PSI)) #import dataset into ggplot2
#plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
#plt2 <- ggplot(mecha_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
#plt2 + geom_boxplot()

### CHALLENGE 15: DELIVERABLE 3

# Peform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)

# Peform t-test on Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
