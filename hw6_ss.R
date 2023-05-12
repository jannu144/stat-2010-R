#Sanjana Satish

#Q1- a
pnorm(7,mean=5,sd=1.3, lower.tail = FALSE)
#Q1-b
n <- 500
sd <- 1.3
mean <- 5
std_error <- (1.3/sqrt(500))
print(std_error)
x <- ((5.5-mean)/std_error)
print(x)
pnorm(5.5,mean=5,sd=std_error, lower.tail = FALSE)
#Q2- a
mean <- 15
sd <- 3
sd_away <- ((13.7-mean)/sd)
pnorm(13.7,mean=15,sd=3,lower.tail = FALSE)
#Q2- b 
n <- 10
sd <- 3
mean <- 15
std_error <- (sd/sqrt(n))
print(std_error)
x <- ((16.75-mean)/std_error)
print(x)
pnorm(16.75, mean=15, sd=std_error, lower.tail = FALSE)
#Q2- c
n <- 5
sd <- 3
std_error <- (sd/sqrt(n))
pnorm(16,mean=15,sd=std_error,lower.tail = FALSE)
