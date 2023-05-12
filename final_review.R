#Q8-Shapiro-Wilks Test for Normality

#vector for frequencies
freq <- c(1, 132, 168, 185, 95, 10)
#vector for ages in respect to the frequencies
age <- c(2.5, 14, 33, 52, 71, 90)
#vector of age values - repeating each age value with its corresponding frequency
age_data <- rep(age, freq)
#shapiro-wilk test for normality
shapiro.test(age_data)

#Q9-Two Independent Proportions

# Create a 2x2 contingency table
data <- matrix(c(397, 211, 413, 114), nrow = 2, byrow = TRUE, dimnames = list(c("Grand Rapids", "Wichita"), c("Aware", "Not Aware")))
# Perform the hypothesis test
prop.test(data, alternative = "less", conf.level = 0.99)

#Q7-chi square test

#creating table using matrix
table <- matrix(c(6, 115, 256, 377, 18, 256, 442, 716, 13, 136, 155, 304, 37, 507, 853, 1397), nrow = 4, byrow = TRUE, dimnames = list(c("Single/Widowed", "Married", "Divorced", "Total"), c("Less HS", "HS", "College", "Total")))
#conduct chi-square test
result <- chisq.test(table)
result

#Q3- Two Independent Means
africa_mean <- 12.1
africa_n <- 201
mexico_mean <- 11.2
mexico_n <- 238
#perform t-test
t.test(x= africa_mean, n= africa_n, y=mexico_mean, m=mexico_n)
