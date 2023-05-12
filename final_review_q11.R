#Q-11: Correlation and Regression

#data: humidity = x axis/moisture = y-axis
humid <- c(46, 53, 37, 42, 34, 29, 60, 44, 41, 48, 33, 40)
moist <- c(12, 14, 11, 13, 10, 8, 17, 12, 10, 15, 9, 13)
#data frame
data <- data.frame(humid, moist)
#scatterplot (check for linearity)
plot(data$humid, data$moist, main="Humidity v. Moisture", xlab="humidity", ylab="moisture")
#adding least squares regression line
#"lm" creates linear model object for regression analysis
regression <- lm(moist ~ humid, data = data)
#plots regression line on scatterplot
abline(regression, col="red")
#"cor" calculates the correlation coefficient
cor(humid, moist)
summary(regression)
#homoscedasticity residuals check
plot(regression$fitted.values, regression$residuals, xlab = "fitted values", ylab = "residuals")
#normal probability plot of residuals to check for normality
qqnorm(regression$residuals)
qqline(regression$residuals)
