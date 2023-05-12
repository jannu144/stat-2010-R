#five-num summary
summary(HW2_Hospital_Expenses)
#Boxplot
boxplot(HW2_Hospital_Expenses)
#Histogram
hist(HW2_Hospital_Expenses$Cost)
#Mean
mean(HW2_Hospital_Expenses$Cost)
#Standard-Deviation
sd(HW2_Hospital_Expenses$Cost)
#Percentage Within 1.5 Standard Deviations
x <- (pnorm(1.5,629.7055,381.2676))-(pnorm(-1.5,629.7,381.2676))*100
print(x)

