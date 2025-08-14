# Practical 10
# MIS - 612415049
# Hypothesis Testing For F-statistics
# Example 1
x <- c(25, 45, 50, 30, 70, 42, 36, 48, 34)
y <- c(10, 70, 20, 50, 95, 55, 42)
varx <- var(x)
vary <- var(y)
cat("H0: varx = vary", ",H1: varx != vary")
if(varx > vary){
  f1 <- varx / vary
}else{
  f1 <- vary / varx
}
p1 <- 2 * min(pf(f1, length(x), length(y), lower.tail = F), pf(f1, length(y)
              ,length(x), lower.tail = T))
if(p1 < 0.02){
  print("Reject H0")
}else{
  print("Failed to reject H0")
}
# lower.tail = TRUE ->  the area to the left of "that value"
# lower.tail = FALSE ->  the area to the right of "that value"
# Q.1
x1 <- c(66,67,75,76,82,84,88,90,92)
y1 <- c(64,66,74,78,82,85,87,92,93,95,97)
var_x1 <- var(x1)
var_y1 <- var(y1)
print("H0 : var_x1 = var_y1 ; H1 : var_x1 ≠ var_y1")
f1 <- var.test(x1, y1, alternative = "two.sided")
if(f1$p.value < 0.1){
  print("Reject H0")
}else{
  print("Failed to reject H0")
}

# Q.2
sd_men <- 61
sd_women <- 53
n_men <- 11
n_women <- 14
print("H0 : variance_men = variance_women ; H1 : variance_men > variance_women")
f2 <- (sd_men / sd_women) ^ 2
p2 <- 1 - pf(f2, df1 = n_men - 1, df2 = n_women - 1)
if (p2 < 0.05) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Q.3
var_1 <- 109.63
n_1 <- 41
var_2 <- 65.99
n_2 <- 21
f3 <- var_1 / var_2
p3 <- 2 * min(pf(f3, n_1 - 1, n_2 - 1, lower.tail = F), 
              pf(f3, n_1 - 1, n_2 - 1, lower.tail = T))
if(p3 < 0.05){
  print("Reject H0")
}else{
  print("Failed to reject H0")
}
# Question Number 4
a <- c(57, 81, 71, 85, 86, 37, 72, 51, 63)
b <- c(55, 56, 54, 45, 72, 80, 60)
print("H0 : var_a ≤ var_b ; H1 : var_a > var_b")
f4 <- var.test(a, b, alternative = "greater", conf.level = 0.98)
if (f4$p.value < 0.02) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Q.5
schools <- c(28, 31, 26, 27, 23, 38, 37)
offices <- c(37, 42, 34, 37, 35)
print("H0 : var_office ≤ var_school ; H1 : var_office > var_school")
f5 <- var.test(offices, schools, alternative = "greater", conf.level = 0.95)
if (f5$p.value < 0.05) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Q.6
x2 <- c(13, 15, 18, 20, 22, 9, 16)
y2 <- c(21, 18, 20, 16, 9)
print("H0 : var_x2 = var_y2 ; H1 : var_x2 ≠ var_y2")
f6 <- var.test(x2, y2, conf.level = 0.95)
if (f6$p.value < 0.05) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Q.7
A <- c(5, 7, 4, 8, 11, 9, 6)
B <- c(10, 12, 13, 9, 15, 8, 9)
print("H0 : var_A = var_B ; H1 : var_A < var_B")
f7 <- var.test(B, A, alternative = "greater", conf.level = 0.95)
if (f7$p.value < 0.05) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}



x1 <- c(13, 15, 18, 20, 22, 9, 16)
y1 <- c(21, 18, 20, 16, 9)
fv <- var.test(x1, y1, alternative = "two.side", conf.level = 0.95)
fv$p.value
if(fv$p.value < 0.05){
  print("Rejct H0")
}else{
  print("Failed to Reject H0")
}

x2 <- c(5, 7, 4, 8, 11, 9, 6)
y2 <- c(10, 12, 13, 9, 15, 8, 9)
fv1 <- var.test(x2, y2, alternative = "greater", conf.level = 0.95)
fv1$p.value
