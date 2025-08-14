# Name- Sumit Vitthal Desai
# MIS No.:- 612415049
# Part I - Questions

# Q.1
# P(X <= r) <- pbinom(r, n, p)
p1 <- 1 - pbinom(5, 10, 0.5)
print(p1)

# Q.2
# P(X < 5) == P(x <= 4)
p2 <- pbinom(4, 10, 0.5)
print(p2)

# Q.3
P_head <- 0.5
p_coin <- 0.5
p3 <- P_head * p_coin
print(p3)

# Q.4
p4 <- dbinom(4, 6, 0.1)
print(p4)

