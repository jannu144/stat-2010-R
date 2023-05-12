#Sanjana Satish

#Q1-a Find 97% confidence interval
processing_time <- c(34, 16, 31, 26, 9, 13, 30, 38, 36, 26, 11, 25, 21, 23, 15)
t.test(processing_time, mu=25, sd=9.2644, conf.level = 0.97) 

#Q1-d How many orders should be sampled? - new 'n'
#(t*sd/E)^2
n <- ((2.415*9.2644)/3)^2
n
power.t.test(n=NULL, delta=1.4, sd=9.2644, power=0.083, sig.level = 0.03)

#Q2-a organization has no idea of the true proportion value
alpha <- 0.01
z_alpha <- qnorm(p = alpha/2, mean = 0, sd = 1, lower.tail = FALSE)
p_hat <- 0.5
E <- 0.02
n <- (p_hat*(1-p_hat))*((z_alpha/E)^2)
n

#Q2-b organization is fairly certain the true proportion value is > 0.75
p_hat <- 0.75
z_alpha <- qnorm(p = alpha/2, mean = 0, sd = 1, lower.tail = FALSE)
n <- (p_hat*(1-p_hat))*((z_alpha/E)^2)
n

#Q3-a find/interpret 98% confidence interval
phat <- 0.53
sample_n <- 800
pop_sd <- sqrt(phat*(1-phat)/sample_n)
pop_sd
sd_norm <- qnorm(p = 0.02/2, mean = 0, sd = 1, lower.tail = FALSE)
upper_interval <- (phat + (sd_norm*pop_sd))
lower_interval <- (phat - (sd_norm*pop_sd))
lower_interval
upper_interval

