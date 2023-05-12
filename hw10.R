#Q1
rm(list = ls())
x <- c(87.6, 78.7, 82.3, 90.1, 84.6, 89.5, 87.0)
y <- c(90.6, 82.4, 88.7, 93.2, 90.5, 91.6, 91.5)
t.test(x, y, alternative = 'less', paired = TRUE, mu = 0, conf.level = 0.95)
shapiro.test(x)
shapiro.test(y)

#Q2-a
pass_computer <- 113
fail_computer <- 37
pass_traditional <- 97
fail_traditional <- 53
#proportions
prop_computer <- pass_computer / (pass_computer + fail_computer)
prop_traditional <- pass_traditional / (pass_traditional + fail_traditional)
#standard error
se <- sqrt((prop_computer*(1-prop_computer)/150) + (prop_traditional*(1-prop_traditional)/150))
#test statistic
z <- (prop_computer - prop_traditional) / se
#Calculate the p-value (two-tailed test)
p_val <- 2 * pnorm(-abs(z))
#checking if e p-val < significance level of 0.05
if (p_val < 0.05) {
  cat("there's a significant difference in the proportion of students passing the examination between the computer and traditional instruction groups.\n")
  if (z > 0) {
    cat("the proportion of students passing the examination in the computer instruction group is higher than that in the traditional instruction group.\n")
  } else {
    cat("the proportion of students passing the examination in the traditional instruction group is higher than that in the computer instruction group.\n")
  }
} else {
  cat("there isn't a significant difference in the proportion of students passing the examination between the computer and traditional instruction groups.\n")
}
#Q2-b
#difference in proportions
diff_prop <- prop_computer - prop_traditional
#margin of error
me <- qnorm(0.975) * se
#lower and upper bounds
lower_bound <- diff_prop - me
upper_bound <- diff_prop + me
lower_bound
upper_bound

#Q3
#no newspaper
no_news <- c(0, 0, 0, 13, 15, 19, 23, 23, 24, 25, 27, 30, 30, 32, 33)
n1 <- length(no_news)
mean1 <- mean(no_news)
sd1 <- sd(no_news)
#newspaper subscribers
news <- c(22, 29, 29, 32, 36, 36, 38, 38, 39, 40, 40, 40, 41, 41, 42, 43, 43, 43, 45, 45, 46, 46, 46, 52, 59)
n2 <- length(news)
mean2 <- mean(news)
sd2 <- sd(news)
#normality assumption
par(mfrow=c(2,2))
qqnorm(no_news, main="No Newspaper Delivery")
qqline(no_news)
qqnorm(news, main="Newspaper Subscribers")
qqline(news)
#two-sample t-test
t.test(no_news, news, var.equal = TRUE)

