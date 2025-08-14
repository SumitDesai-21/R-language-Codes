# Chisquare, Wilcoxons signed rank test, sine test 
# df <- (rows-1) × (columns-1)
# chi-squared test
# observed <- matrix(c(70, 50,
#                      80, 20,
#                      35, 45),
#                    nrow = 3,
#                    byrow = TRUE)
# result <- chisq.test(observed, correct = FALSE)
# result
# 
# data <- matrix(c(8, 2,
#                  7, 6), nrow = 2, byrow = TRUE)
# ans <- chisq.test(data, correct = FALSE)
# ans


# Sign Test
# # ex.1 
# x <-c(17, 15, 20, 29, 19, 18, 22, 25, 27, 9, 24, 20, 17, 6, 24, 14, 15, 23, 24, 26)
# m0 <- 21.5
# sp <- length(x[x > m0])
# sn <- length(x[x < m0])
# n <- sp + sn
# pv <- pnorm(sp, n, 0.5)
# sp
# pv
# if(pv < 0.05){
#   print("H0 Rejetcs")
# }else{
#   print("Failed To Reject Ho")
# }

 # H1: median > m0 -> sn and median < m0 -> sp
# ex.2 
x <- c(612, 619, 631, 628, 643, 640, 655, 649, 670, 663)
m0 <- 625
sp <- length(x[x > m0])
sn <- length(x[x < m0])
n <- sp + sn
pv <- pbinom(sn, n, 0.5)
sn
pv
# If the alternative were two-sided (≠ 625), 
#the p-value would be calculated differently:
# pv = 2 * pbinom(min(sp, sn), n, 0.5)


# # 
# x <- c(110, 120, 123, 132, 125)
# y <- c(120, 118, 125, 136, 121)
# d <- x - y
# sp <- length(d[d > 0])
# sn <- length(d[d < 0])
# n <- sp + sn
# pv <- pbinom(sp, n, 0.5)
# sp
# pv

# ## Questions on Wilcoxon's signed rank test
# x <- c(163, 165, 160, 189, 161, 179, 158, 151, 169, 162, 163, 139, 172, 165, 148, 166, 172,
#        163, 187, 173)
# wilcox.test(x, alter= "greater", µ = 160)
# wilcoxon signed rank test with continuity correction.


# # for paired data
# x <- c(147, 183.5, 232.1, 161.6, 197.5, 206.3, 177, 215.4, 147.7, 208.1, 166.8, 
#        131.9, 150.3, 197.2, 159.8, 171.7)
# y=c(137.9,176.2,219,163.8,193.5,201.4,186.6,203.2,149,195.4,
#       158.5,134.4,149.3,189.1,159.1,173.2)
# d <- x - y
# wilcox.test(d, alter = "greater", µ = 0)
# # 
# 
# x1 = scan()
# 70
# 80
# 35
# 50
# 20
# 45
# y1 = matrix(x1, nrow = 3, ncol = 2)
# rt1 <- chisq.test(y1, correct = FALSE)
# rt1
# 
# 
# x2 = scan()
# 8
# 7
# 2
# 6
# y2 = matrix(x2, 2, 2)
# cat("H0: Indepedent; H1: Dependent")
# rt2 <- chisq.test(y2, correct = FALSE)
# rt2
# 
# 
# x <- c( 9, 12, 18, 14, 12, 14, 12, 10, 16, 14, 13, 15, 13, 11, 13, 11, 9, 11)
# m <- 12
# x_new <- x[x != m]
# sp <- sum(x_new > m)
# sn <- sum(x_new < m)
# n <- sp + sn
# res <- binom.test(min(sp, sn), n, 0.5, alternative = "two.sided")
# res

# 
# x <- c(271, 230, 198, 275, 282, 225, 284, 219, 253,
#        216, 262, 288, 236, 291, 253, 224, 264, 295, 211, 252, 294, 242, 
#        272, 268)
# m0 <- 250
# x_new <- x[x != m0]
# sp <- length(x_new[x_new > m0])
# sn <- length(x_new[x_new < m0])
# n <- sp + sn
# res <- binom.test(min(sp, sn), n, 0.5, alternative = "two.sided")
# res


x <- c(98.38, 115.33, 98.62, 114.38, 87.79, 84.06,
       96.18, 98.74, 91, 107.82, 108.28, 112.62, 124.18, 101.99, 112.51, 75.65, 83.77, 84.91,
       109.73, 109.41, 100.4, 95.37, 115.46, 111.78, 86.13, 82.14, 78.47, 98.18
)
m <- 100
res <- wilcox.test(x, m, alternative = "greater", exact = FALSE, correct = FALSE)
res

x1 <- c(700, 650, 800, 975, 855, 785, 759, 640, 950, 715, 825, 980, 895, 1025, 850, 915, 740, 985, 770, 785, 700, 925)
m1 <- 700
sp <- length(x1[x1 > 700])
sn <- length(x1[x1 < 700])
n <- sp + sn
pv <- 2 * pbinom(min(sp, sn), n, 0.5)
sp
sn
pv


m2 <- 41
x2 <- c(25, 19, 38, 52, 57, 39, 46, 46, 30, 49, 27, 39, 44, 63, 31, 67, 42
)
sp2 <- length(x2[x2 > m2])
sn2 <- length(x2[x2 < m2])
n2 <- sp2 + sn2
cat("H0: age = 41; H1: age != 41 i.e age > 41 or age < 41")
pv2 <-2 * pbinom(min(sp2, sn2), n, 0.5)
min(sp2, sn2)
pv2


before <- c(3, 5, 2, 3, 3, 3, 0, 4, 1, 6, 4, 1)
after <- c(1, 2, 0, 2, 2, 0, 2, 3, 3, 4, 1, 0)
d <- before - after
sp3 <- length(d[d > 0])
sn3 <- length(d[d < 0])
n3 <- sp3 + sn3
sn3
pv3 <- pbinom(sn3, n3, 0.5)
pv3
# p-value < 0.05, reject H₀ 
# p-value > 0.05, fail to reject H₀ 



hours <- c(1.5, 2.2, 0.9, 1.3, 2.0, 1.6, 1.8, 1.5, 2.0, 1.2, 1.7)
w4 <- wilcox.test(hours, mu= 1.8, alternative = "two.sided", correct = FALSE)
w4

time <- c(17, 15, 20, 20, 32, 28, 12, 26, 25, 25, 35, 24)
w5 <- wilcox.test(time, 20, alternative = "greater", correct = FALSE)
w5
