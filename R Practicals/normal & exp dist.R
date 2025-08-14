# Normal PDF
x <- seq(-4, 4, by=0.1)
y <- dnorm(x, mean = 0, sd=1)
plot(x, y, type = "l", col="blue", main = "Normal Dist PDF", ylab = "Density")

# Normal CDF
y_cdf <- pnorm(x, mean = 0, sd=1)
plot(x, y_cdf, type = "l", col="red", main = "Norma Dirst CDF", ylab = "P(X <= x")

# Exponential PDF
x <- seq(0, 10, by=0.1)
y <- dexp(x, rate = 0.5)
plot(x, y, type="l", col="green", main = "Exponential PDF", ylab = "Density")

# Plot Exponential CDF
y_cdf <- pexp(x, rate = 0.5)
plot(x, y_cdf, type = "l", col = "purple", main = "Exponential CDF", ylab = "P(X ≤ x)")
