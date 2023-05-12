#Q1-b women with breast cancer using mammo
conf_lvl <- 0.94
margin_error <- 0.05
z_scr <- qnorm((1 + conf_lvl)/2)
p <- 0.5
n <- ceiling((z_scr^2 * p * (1-p))/margin_error^2)
n
#Q2-diseased plants
mu <- 57.1
sd <- 42.9
n_2 <- 40 #sample size
xbar <- 65
S_E <- sd/sqrt(n_2) #standard error
z <- (xbar-mu)/S_E #z-score
p_2 <- pnorm(z, lower.tail = FALSE) #calculates probability
p_2
#Q3
n_3 <- 15
p_hat <- 530/n_3 #sample proportion
h0 <- 0.05
SE_2 <- sqrt(h0*(1-h0)/n_3)
z_scr2 <- (p_hat-h0)/SE_2
z_scr2
z_critical <- qnorm(0.05, lower.tail = FALSE)
#Q4 - turbot hypothesis test
data_4 <- c(71.3, 74.8, 66.2, 67.2, 71.8, 70.7, 68.7, 75.8, 76.8, 69.3, 68.5, 72.2, 70.6, 82.5, 74.9, 63.9, 63.2, 72.3)
plot(data_4, type="o")
t.test(data_4, mu=75, alternative = "two.sided", conf.level = 0.95)

