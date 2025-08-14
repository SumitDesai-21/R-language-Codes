# NAME:- Sumit Vitthal Desai
# MIS No:- 612415049
# Q.1
total_students <- 500
ans1 <- (pnorm(155, 151, 15) - pnorm(120, 151, 15)) * total_students
print(as.integer(ans1))

# Q.2
ans2_a <- 1 - pnorm(1.84, 0, 1)
print(ans2_a)

ans2_b <- pnorm(0.86, 0, 1) - pnorm(-1.97, 0, 1)
print(ans2_b)

# Q.3
ans3_a <- 1 - pnorm(30, 24, 3.8)
print(ans3_a)

ans3_b <- (1 - pnorm(15, 24, 3.8)) * 100
print(ans3_b)

ans3_c <- (1 - pnorm(15, 24, 3.8)) * 100
print(ans3_c)

ans3_d <- dbinom(2, 3, ans3_a)
print(ans3_d)

