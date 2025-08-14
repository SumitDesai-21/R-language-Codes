# Practical 8
# MIS - 612415049

#Q.1
ans_1a <- qchisq(1-0.025, 15)
ans_1b <- qchisq(1-0.01, 18)
ans_1c <- qchisq(1-0.05, 25)

#Q.2
# (n-1)S^2/σ^2
ans_2a <- 1 - pchisq(27 * 6.1/4, 27)
ans_2b <- pchisq(27 * 5.749/4, 27) - pchisq(27 * 2.168/4, 27)

#Q.3
ans_3a <- pchisq(2.34, 6)
ans_3b <- 1 - pchisq(15.34, 9)
ans_3c <- pchisq(6.66, 17) + 1 - pchisq(27.34, 17)
ans_3d <- pchisq(25.41, 14) - pchisq(5.25, 14)
ans_3e <- qchisq(0.0333, 5)
ans_3e
ans_3f <- qchisq(1- 0.125, 25)

# tails having equal areas
# 1 - 0.75 = 0.25
# alpha/2 -> 0.125
ans_3g1 <- qchisq(0.125, 11)
ans_3g2 <- qchisq(0.875, 11)

ans_3h1 <- qchisq(0.0333/2, 23)
ans_3h2 <- qchisq(1- (0.0333/2), 23)


interv <- seq(0, 100)
plot(interv, dchisq(interv, 15), xlab = "chi-sq values", ylab = "probability"
     , main = "Chi Sqaured Graph with df = 15")

