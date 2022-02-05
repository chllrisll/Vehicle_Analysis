#Import and read in the MechaCar_mpg.csv file as a dataframe.
Mecha_DF <- read.csv(file='MechaCar_mpg.csv')
#Perform linear regression using the lm() function. In lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mecha_DF) #create linear model
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=Mecha_DF))