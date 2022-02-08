# MechaCar_Statistical_Analysis
Data Sources: MechaCar_mpg.csv + Suspension_Coil.csv

## Linear Regression to Predict MPG

![Statistical_ Analysis](https://user-images.githubusercontent.com/49954261/152923799-57557ad7-ccad-4bcd-8327-40bd23e2bd12.png)

**In our statitistical Analysis you can see the vehicle length and vehicle ground clearance are the variables that provided a random amount of variance. These variables affected mpg most. Suprisingly; vehicle weight, spoiler angle and all-wheel-drive did not show as much consistent affect.**

**The slope of the linear model is less than zero.**

**The model gives us an r-squared value of 0.7149 or 71%- meaning this model proves sufficient 71% to be a good predictive model for mpg MechaCars.**

## Summary Statistics on Suspension Coils

**MechaCar's Suspension Coil dataset**

When looking at the data of the manufacturing lots, the variance of suspension coils is 62.29 PSI, well under 100lbs per square inch. The current manufacturing data and model for predictive mpg proves sufficient

![Total_Summary](https://user-images.githubusercontent.com/49954261/152925224-ae5f2c52-045f-4639-b52a-f09cea88dc6c.png)

![Lot_Summary](https://user-images.githubusercontent.com/49954261/152925242-d4015d12-0331-4324-8767-ffc633990c11.png)


## T-Tests on Suspension Coils

![PSI_All_Lots](https://user-images.githubusercontent.com/49954261/152927197-833a92d3-77b6-4b83-ae1b-b3dc5afa5c41.png)

The mean of the sample is 1498.78. With a p-Value of 0.06, which is higher than the common significance level of 0.05. The mean of all three lots is too close to 1500 to draw anything further.

If we look at lots seperately:
We see Lot 1 and 2 well within the 100 PSI variance requirement. Lot 3 shows much larger variances skewing the data set as a whole.

![PSI_Each_Lot_Rplot](https://user-images.githubusercontent.com/49954261/152926184-210cca97-964d-4f9e-9304-42768c0cd957.png)

![Each_Lot_Summary](https://user-images.githubusercontent.com/49954261/152927249-718658c5-2f4e-4b29-9530-8d79f50797c8.png)


## Study Design: MechaCar vs Competition

-What MechaCar vehicles hold their value

-What models hold their value best vs comp

-What is the safety rating of MechaCars

Dependant Variables: Purchase Price, Resale Price

Independant Variables: Safety Rating, Resale Vale, Purchase Price

Null Hypothesis: MechaCars' priced their cars by brand/ car class at an efficient rate

Alt Hypothesis: MechaCars' priced their cars by brand/ car class at a less than efficient rate

Mutliple Linear Regression to show multiple MechaCar models vs other competition car models would be the best way to visualize resale value in comparison to other manufacturers. 

Data Needed for Study

Purchase Price and Resale Prices of Mecha Cars and competition of other manufacturers 
