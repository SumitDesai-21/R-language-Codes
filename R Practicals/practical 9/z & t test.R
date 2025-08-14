# Practical 9
# MIS - 612415049
# Q.1
n1 <- 400
xb1 <- 10.2
S1 <- 2.25
µ1 <- 10
# Z = (xb-µ)/(σ/sqrt(n))
z1 <- (xb1 - µ1)/(S1/sqrt(n1))
cat("H0: µ = ",µ1, ", H1 : µ ≠", µ1)
p1 <- 2 * pnorm(abs(z1), 0, 1, lower.tail = F)
cat("Z_cal =", z1)
cat("P_val =", p1)
# α = 0.05
if(p1 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}


# Q.2 
n2 <- 65
xb2 <- 47.8
S2 <- 10
µ2 <- 50
z2 <- (xb2 - µ2)/(S2/sqrt(n2))
cat("H0: µ ≥ ",µ1, ", H1 : µ <", µ1)
p2 <- 1 - pnorm(z2, 0, 1, lower.tail = F)
cat("Z_cal =", z2)
cat("P_val =", p2)
# α = 0.05
if(p2 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}

# Q.3
µ3 <- 120
n3 <- 100
xb3 <- 105
S3 <- 20
# Z = (xb-µ)/(σ/sqrt(n))
z3 <- (xb3 - µ3)/(S3/sqrt(n3))
cat("H0: µ = ",µ3, ", H1 : µ ≠", µ3)
p3 <- 2 * pnorm(abs(z3), 0, 1, lower.tail = F)
cat("Z_cal =", z3)
cat("P_val =", p3)
# α = 0.05
if(p3 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}

n4a <- 1000
n4b <- 2000
xb4a <- 67.5
xb4b <- 68
σ4 <- 2.5
var1 <- (σ4)**2 
var2 <- (σ4)**2 
z4 <- (xb4a - xb4b) / ((var1/n4a) + (var2/n4b))
cat("H0: µ = µ4,  H1 : µ ≠ µ4")
p4 <- 2 * pnorm(abs(z4), 0, 1, lower.tail = F)
cat("Z_cal =", z4)
cat("P_val =", p4)
# α = 0.05
if(p4 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}

# Q.5
n5a <- 60
xb5a <- 66
n5b <- 50
xb5b <- 72
σ5 <- 2.48
var5a <- (σ5)**2 
var5b <- (σ5)**2 
z5 <- (xb5a - xb5b)/ sqrt(((var5a / n5a) + (var5b / n5b)))
cat("H0: µ5a > µ5b,  H1 : µ5a ≤ µ5b")
p5 <- pnorm(abs(z5), 0, 1, lower.tail = F)
p5
if(p5 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}

n6 <- 12
monthly_Salary <- c(70000, 78000, 66000, 61000, 72000, 58000,
                    64000, 60000, 73000, 74000, 76000)
xb6 <- mean(monthly_Salary)
S6 <- sqrt(var(monthly_Salary))
µ6 <- 73000
# Z = (xb-µ)/(σ/sqrt(n))
z6 <- (xb6 - µ6)/(S6/sqrt(n6))
cat("H0: µ < ",µ6, ", H1 : µ ≥", µ1)
p6<- pnorm(abs(z6), 0, 1, lower.tail = F)
cat("Z_cal =", z6)
cat("P_val =", p6)
# α = 0.05
if(p6 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}

A <- c(200, 210, 190, 200, 190, 200, 180, 200, 200, 210)
B <- c(190, 200, 210, 190, 180, 190, 200, 192)
xb7a <- mean(A)
xb7b <- mean(B)
var7a <- var(A)
var7b <- var(B)
n7a <- length(A)
n7b <- length(B)
z7 <- (xb7a - xb7b)/sqrt((var7a/n7a)+(var7b/ n7b))
cat("H0: µ7a = µ7b,  H1 : µ7a !=  µ7b")
p7 <- 2 *  pnorm(abs(z7), 0, 1, lower.tail = F)
cat("Z_cal =", z7)
cat("P_val =", p7)
# α = 0.05
if(p7 < 0.05){
  print("Reject H0")
}else{
  print("failed to reject H0")
}