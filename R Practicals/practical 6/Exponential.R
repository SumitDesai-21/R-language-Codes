# Exponential Dist.
#Q.1
p1 <- 1 - pexp(15, 1/15)
print(p1)

#Q.2
p2 <- 1 - pexp(0.5, 2)
print(p2)

#Q.3
p3 <- pexp(3, 0.25)
Ans3 <- pbinom(6, 6, p3) - pbinom(3, 6, p3)
print(Ans3)

