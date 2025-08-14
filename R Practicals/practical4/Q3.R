## Q.1
# Plot f(x)
x_values<- seq(-5, 25, 0.5)
y_values <- ifelse(x_values >= 0 & x_values <= 20, 1/20, 0)
plot(x_values, y_values, type = "l", col = "blue", lwd = 2, xlab = "X",
     ylab = "f(X)", main = "PDF of X (Uniform Distribution)")

lines(c(0, 20), c(1/20, 1/20), col="red", lwd = 2)

# compute P(x > 4)
pofx_greater_than4 <- (20 - 4) / 20
print(pofx_greater_than4)

## Q.2
# plot f(x)
xvalues <- seq(-2, 12, by=0.5)
yvalues <- ifelse(xvalues >= 0 & xvalues <= 5, (2/ 75) * xvalues, 
                  ifelse(xvalues > 5 & xvalues <= 10, 2/15, 0))

plot(xvalues, yvalues, type = "l", col = "red", lwd = 2, 
     xlab = "X", ylab = "f(X)", main = "PDF of X")

lines(c(5, 10), c(2/15, 2/15), col = "blue", lwd = 2)

# compute p(x > 4)
p1 <- (1/75) * (5^2 - 4^2)
p2 <-  (2/15) * (10 - 5)
prob_greater_than4 <- p1 + p2
print(prob_greater_than4)

