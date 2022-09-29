# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![Multiple_Linear_Regression](./images/multiple_linear_regression_mpg.png)
<br/><br/>
* Since the significance value we are applying to our analysis is α = 0.05, the p-values with a value < 0.05 will reject the null hypothesis that the slope of the regression line is zero. The dependent variable in this regression analysis is the fuel economy (mpg) and the independent variables that provide a non-random amount of variance to the mpg are the vehicle lengths and ground clearance as seen in the image of the linear regression output using R. It should be mentioned that vehicle weight has a value slightly higher than α = 0.05 but still has provides some non-random variance to the mpg of the vehicles. <br/><br/>
Also, there are some variables that do not contribute to the mpg which are spoiler angle and whether or not the vehicle is all-wheel drive (AWD), since they have p-values higher than the significance level, failing to reject the null hypothesis that the slope equals zero. <br/><br/>
![Line_equation](./images/regression_line_eq.png)
<br/><br/>
* The slope of the linear model does not equal zero since there are independent variables that contribute to the mpg of the vehicles. The image above provides the coefficients and y-intercept of the regression line using the lm() function in R. <br/><br/>
* This regression analysis does predict mpg of MechaCar prototypes effectively since it shows the independent variables that influence the mpg significantly.
