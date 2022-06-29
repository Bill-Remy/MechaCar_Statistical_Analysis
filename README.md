# Mecha Car Statistical Challenge
## Predicting MPG - Multiple Linear Regression (Deliverable 1)
The oputput from our multiple linear regression model is shown below.

<img src="linear_regression_model_output.png">

### Which variables/coefficients provide non-random amount of variance to the mpg values?
From  the output table above both vehicle length and ground clearance provide non-random variance.  We can conclude this since both of their Pr values are less than 0.05.  The vehichle weight is close to meeting our threshold at a value of 0.078 but we would need additional data with analysis to conclude weight is a factor.  We could consider removing spoiler angle and AWD since they do not contribute significantly to the model.  Their respective p-values are greater than the threshold and the coefficients are not contributory to the model.  

### Is the slope of the line zero?
Based on the p-value of 5.35e-11 being less than 0.05 we can reject the null hypothesis and say the slope is not zero.

### Does the model predit MPG of MechaCar prototypes effecitvely?
The model overall does a fair job of predicting the MPG since the R-squared value is .7149 or the model explains 71.5% of the MPG variance.  The model could be improved by collecting data on other car attributes.  The most likely attributes would be displacement, horsepower and rolling resistance.

## Suspenion Coil PSI Review (Deliverable 2)
## Summary Data for Suspenion Coil PSI Samples

The figure below provides summary statistics for PSI of all the coils and by Lot.

<img src="Coil_Summary_Stats.png">

The mean and median for the coil sample population were as specified with values of 1498.8 and 1500 psi repsectively.  The variance and standard deviation for the sample population were as expected and did not indicate any cause for concern.

When reviewing the summary statistics for each lot, LOT 3 has an out of specification condition with variance of the coils.  The total variance exceeds 100 psi at 170 psi.  The other lots, Lot 1 and Lot 2, are clearly in specification on both mean and variance from coil to coil.  There is an issue with Lot 3 that warrants further investigation.

## Suspension Coil Sample vs. Population Analysis (Deliverable 3)

### Comparison of Lot Mean vs. Population Mean (Deliverable 3 Part 1)

The following hypotheses were used for the t-test of samples compared to the population:

H0: There is no statistical difference between the sample mean PSI and the population mean PSI if 1500.

Ha: There is a statistical difference between the sample mean PSI and the population PSI.  

An alpha = 0.05 was used for all tests.

The result of the t-test comparing all sample values of coil psi to the population mean of 1500 psi is shown below.

<img src="Sample_mean_to_Population.png">

***Analysis of Results***
The p-value for all samples versus the population mean of 1500 was 0.06 which was more than our alpha of 0.05 thus we cannot reject H0.  The coil samples are not statistically different than the population mean of 1500 psi. 


### Comparison of Sample Means Across Lots (Deliverable 3 Part 2)
To compare the sample means across the different coil lots a paired t-test was used with an alpha of 0.05.

H0: There is no statistical difference between the sample mean PSI between the lots

Ha: There is a statistical difference between the sample mean PSI between lots.

The output of the tests are is shown below.

<img src="Lot_Paired_Ttest.png" >

***Analysis or Results***

The sample mean between Lot 1 and Lot are not statistically different given our p-value of .6 is substantially greater than our alpha value.
Lot 3 is statistically different from Lot 1 and Lot 2 since both p-values of 0.043 and 0.042 respectivey are less than our alpha value.  
the t-value of 0.52 also tells us that the error differences in the two sample comparisons is small.  In contras the t-values of Lot 1 and Lot 2 compared to Lot are 2.07 and 2.08 respecitvely which would indicate they are modestly different.  

Given how close the p-values are for Lot 3 compared to the other lots it would be prudent to look at the distribution for Lot 3 for outliers and skewness.  We know from prior analysis that the variance in Lot 3 was significantly higher than in Lot 1 or Lot 2.

## Deliverable 4 Mecha Car Competitor Study Design

To meassure our MechaCar to the competition, marketing has determined that Total Value defined by price, city fuel mileage and drivability is the key differentiator.  The weighting of the Total Value components will be as follows:
- Price 50%
- City Fuel Mileage 30%
- Driveability  20%

In order to determine Total Value the team will need to develop multiple sets of test to evaluate MechaCar to the market competitors and their values provided by Marketing.  Marketing has compiled statistical data sets of the comparable cars with their prices, city fuel mileage and suspension performance as a proxy for driveability.

***Assumptions and Sampling Parameters***
- All data sets will be tested for normality
- Sample plans will be adjusted as necessary to account for sample varaince 
- Alpha = 0.05 for all tests

The statistical testing necessary to develop the "Total Value" analysis will be divided into three parts.

**Part I - Price Comparison and Market Sensitivity**

First, the team will do a simple comparison of the expected MechaCar price to the market sample mean price via one sided t-test.  As a second dimenion of understanding market pricing the team will develop a regression model of competitors cars to understand the impact on price of city fuel mileage and suspenion performance.  The resuslt of this regression model will be to test where MechaCar fits on the line and to evaluate design tradeoffs that may improve price vs. performance or allow us to capture a higher price.

The hypothesis for Part I is as follows:
H0 - MechaCar price is = Market mean price 
Ha - MechaCar prices is not = Market mean price.

**Part II - City Fuel Mileage vs. Market Competitors

The team will need to collect samples from not less than five lots of MechaCars with a sample size of ten cars per sample.  The team will do a one sample t-test on each sample and paired t-test across the samples to determine if the MechaCar is better than the market city fuel mileage.  The testing hypothesis are:

H0 - MechaCar mean city fuel mileage is > market city fuel mileage
Ha - MechaCar mean city fuel mileage is <= market city fuel mileage.

In addition to testing of the means sample to sample and versus the market, the team will need to test the variances of the samples.  For this test a F-test will be used to compare sample variances between samples.  The hypothesis used for this test are:
- H0 - The sample variances are equal to each other
- Ha = The sample variances are not equal to each other

**Part III - Driveability - Suspension Performance vs Market

In the suspension test the engineering team will subject test suspenions to loading that simulates light and heavy braking along with cornering.  The test will consist of taking reading from compression distance when various loads are applied.  The team will collect the data into three groups(light braking, heavy braking and cornering) with a sampling plan that is the same as the fule mileage(five sample groups of ten cars in each group).  The desired out come for MechaCar is to have a stiffer, more sporty suspenion than the competition.  Thus the hypothesis for suspension testing will be as follows:
- H0 - MechaCar suspension compression in all conditions is < Market mean compression
- Ha - MechaCar suspension compression in all conditions is >= Market mean compression

Marketing and Engineering have gathered sufficient market data on competitors suspension performance to ascertain the mean market performance.

**Results and Conclusions

After completing the three testing parts, the Marketing team will utilize the regression model developed in Part I to evaluate the parameters of city fuel mileage and "driveability" to determine if pricing of MechaCar is in line with market expectations.  If warranted the Marketing team will test various price scenarios to examine changes to mileage performance or suspension to evaluate price elasticity.   Finally, the Marketing team can develop the Total Value offering of MechaCar to the market for marketing and sales campaigns.

