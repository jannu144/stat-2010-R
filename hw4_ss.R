#question 1- SD of p-hat
p <- 0.01 #mean
n <- 100 #sample 
SD_phat <- sqrt((p*(1-p))/n)
SD_phat
#question 1 - probability > 3% will be delinquent
p <- 0.01
n <- 100
p_hat <- 0.03
SD_phat <- sqrt((p*(1-p))/n)
p = pnorm(p_hat, mean = 0.01, sd = SD_phat, lower.tail = FALSE)
p
#question 2 - standard deviation
n <- 1500
p <- 0.01
SD_phat <- sqrt((p*(1-p))/n)
SD_phat
