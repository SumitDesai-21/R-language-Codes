# # Name: Sumit Vitthal Desai
# # MIS: 612415049
# # Question on t-distribution:
# 
# # Q.1
# µ1 <- 300
# X_bar <- 290 
# S1 <- 50
# n1 <- 15
# df1 <- n1 - 1
# t1 <- (X_bar - µ1)/(S1/ sqrt(n1))
# pt(t1, df1)
# 
# #Q.2
# µ2 <- 310
# X_bar2 <- 290
# S2 <- 50
# n2 <- 16
# df2 <- n2-1
# 
# t2 <- (X_bar2 - µ2)/(S2/ sqrt(n2))
# t2
# 
# # Q.3
a <- qt(0.975, 15)
a
b <- qt(1 - 0.995, 17)
b
# 
# Q.4
ans1 <- pt(2.365, 7)
ans1
ans2 <-1 -  pt(-2.567, 17)
ans2
tl <- qt(0.995, 20)
tl
tr <- qt(0.99, 20)
ans3 <- pt(tr, 20) - pt(-tl, 20)
ans3
p2 <- pt(2.807, 23)
p2
p1 <- p2 - 0.095
k <- qt(p1, 23)
ans4 <- k
ans4

# Questions on f dist
#Q.1
µ1 <- 100
σ1 <- 10 /sqrt(30)
p1 <- pnorm(105, µ1, σ1) - pnorm(95, µ1, σ1)
print(p1)

#Q.2
µ2 <- 50
σ2 <- 15
p2 <- pnorm(70, µ2, σ2) - pnorm(50, µ2, σ2)
p2


#
# use qf without 1 - alpha 
ans1 <- qf(0.05, df1 = 7, df2 = 15)
ans1
ans2 <- qf(0.99, df1 = 28, df2 = 12)
ans2
ans3 <- qf(0.01, df1 = 24, df2 = 19)
ans3


A <- c(66, 67, 75, 76, 82, 84, 88, 90, 92)
B <- c(64, 66, 74, 78, 82, 85, 87, 92, 93, 95, 97)
# µA <- mean(A)
# µB <- mean(B)
# σ2A <- sum((µA - A)^2)/8
# σ2B <- sum((µB - B)^2)/10
σ2A <- var(A)
σ2B <- var(B)
f1 <- σ2A / σ2B
f_tab <- qf(1 - 0.1, 8, 10)
if(f1 < f_tab){
  print("Failed to reject H0")
}else{
  print("Reject H0")
}
# P(S1^2 / S2^2 < 4.89)
df1 <- 7
df2 <- 11
ans1 <- pf(4.89, df1, df2)
ans1

X <- c(2, 4, 6, 8, 10)
Y <- c(2, 4, 6, 8, 10, 2, 4, 6, 8, 10)
µX <- mean(X)
µY <- mean(Y)
σ2X <- sum((µX - X)^2)/4
σ2Y <- sum((µY - Y)^2)/9

f2 <- σ2X / σ2Y
ans2 <- pf(f2, 4, 9)
# P(F < S1^2 / S2^2)
ans2

