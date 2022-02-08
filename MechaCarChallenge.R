#Deliv 1
#Import and read in the MechaCar_mpg.csv file as a dataframe.
Mecha_DF <- read.csv(file='MechaCar_mpg.csv')
#Perform linear regression using the lm() function. In lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mecha_DF) #create linear model
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mecha_DF))

#Deliv 2
#import and read in the Suspension_Coil.csv file as a table.
mecha_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- mecha_table %>% summarize(Mean_PSI=mean(PSI),Median=median(PSI),variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns


lot_summary <- mecha_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median=median(PSI),variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#Deliv 3
#determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(mecha_table$PSI, mu=1500) 
#One Sample t-test

#data:  mecha_table$PSI
#t = -1.8931, df = 149, p-value = 0.06028
#alternative hypothesis: true mean is not equal to 1500
#95 percent confidence interval:
#  1497.507 1500.053
#sample estimates:
#  mean of x 
#1498.78 

#box plot: PSI All Lots
plt1 <- ggplot(mecha_table,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI of each Lot
plt2 <- ggplot(mecha_table,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()

#Deliv 4
Lot1 <- subset(mecha_table, Manufacturing_Lot=="Lot1")
Lot2 <- subset(mecha_table, Manufacturing_Lot=="Lot2")
Lot3 <- subset(mecha_table, Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)
