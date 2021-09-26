# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![2-Summary.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/2-Summary.png)

a. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

b. Is the slope of the linear model considered to be zero? Why or why not?

The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

c. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Our R-squared value is 71%, which means roughly ~71% of the time the model will predict mpg values correctly. There are probably other factors that were not captured in the datasaet that contribute to the mpg variability of the MechaCar prototypes.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.
![4-total_summary.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/4-total_summary.png)

Similarly, but significantly more consistent, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, it is Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.
![5-lot_summary.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/5-lot_summary.png)

## T-Tests on Suspension Coils
Lot 1 and Lot 3 the PSI values are not different from the population mean. However lot 2 the p-value is .347 which means there is evidence that the suspension coil is different from the population mean. All t-tests can be seen below:

#### a. t-test all
![6-t_test_all.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/6-t_test_all.png)

#### b. t-test lot 1
![6-t_test_lot1.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/6-t_test_lot1.png)
#### c. t test lot 2
![6-t_test_lot2.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/6-t_test_lot2.png)
#### d. t-test lot 3
![6-t_test_lot3.png](https://github.com/Shikharbhd/MechaCar_Statistical_Analysis/blob/main/Resources/Images/6-t_test_lot3.png)

### Study Design: MechaCar vs Competition
One feature that people are interested in when buying a car is how much horsepower the car has. I think horsepower, mpg and how large the engine is are 3 factors that go into consumer decision making. We can use our tests to see if our MechaCar is much different from the competiton. We can make a null hypothesis stating that it is not different from the competition and our Alternative would be the opposite. To do this we will need to use our t-test after collecting data from different types of competitor vehicles. Our t-test will be comparing the population of all types of competitor vehicles.
