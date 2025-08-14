# part I
# Name <- "sumit vitthal Desai"
# print(class(Name))
# age <- 18L
# print(class(age))
# College_Name <- "CTU"
# print(class(College_Name))

# Part II
# ctrl + shift + c == comments out selected area
# phy <- 81
# chem <- 90
# maths <- 97
# total <- phy + chem + maths
# avg <- total / 3
# print(avg)
# 

# part III
# #Generating Sequences with seq()
# vect1 <- seq(from = -10, to = 10, by = 1)
# vect2 <- seq(from = 2, to = 20, by = 2)

# part IV
# # Repeating Values with rep()
# vect3 <- rep(c(1), each = 20)
# vect4 <- rep(c(1, 2, 3), each = 3)
# vect5 <- seq(from = 5, to = 150, by = 5)

# 
# s <- seq(from = 50, to = 100, by = 10)
# u <- rep(c(2, 4, 5), each = 5)

height <- c(10, 20, 30, 40, 50)
weights <- c(55, 56, 57, 58, 59)
table <- data.frame(Height = height, Weight = weights)
print(table)
View(table)

# concept filtering data
less_weight <- table[table$Weight > 56, ]
height_less_than_60<- table[table$Height < 60, ]
even_height <- table[table$Height %% 2== 0, ]
variable_weight <- table[table$Weight > 55 & table$Weight < 65, ]
print(less_weight)
# data frame with student name and their marks 
names <- c("Sumit Desai", "Niranjan Gavali", "Ameya Naik", "Anay Mulay")
marks <- c(97, 34, 54, 79)
data <- data.frame(Names = names, Marks = marks)
print(data)
View(data)

# filter students who scored more than 75
marks_more_than_75 <- data[data$Marks > 75, ]
print(marks_more_than_75)

# fucntions in R 
# prime function 
# 
# prime <- function(n){
#   if(n < 2){
#     return(FALSE)
#   }
#   for(i in 2:sqrt(n)){
#     if(n %% i == 0){
#       return(FALSE)
#     }
#   }
#   return(TRUE)
# }
# print(prime(2))
prime <- function(n){
  if(n == 2){
    return(TRUE)
  }
  if(n < 2){
    return(FALSE)
  }
  for (i in 2:floor(sqrt(n))) {
    if(n %% i == 0){
      return(FALSE)
    }
  }
  return(TRUE)
}

prime(2)
# even or odd function
# 
# checker <- function(n){
#   if(n %% 2 == 0){
#     return("EVEN")
#   }
#   else{
#     return("ODD")
#   }
# }
# checker(2)

# Concept: Factorial using Recursion
# 
# fact <- function(n){
#   if(n == 0 | n == 1){
#     return(1)
#   }
#   return(n * fact(n - 1))
# }
# fact(4)


# recursive function
total_sum <- function(n){
  if(n == 0){
    return(0)
  }
  return(n + total_sum(n - 1))
}
total_sum(5)

Employee_Name <- c("sumit", "niranjan", "ameya", "anay", "piyush")
# stipend
salaries <- c(100000, 45000, 34000, 74400, 68000)
data_entry <- data.frame(Names = Employee_Name, Salaries = salaries)
print(data_entry)
View(data_entry)


grthan50k <- data_entry[data_entry$Salaries > 50000, ]



greater_than_50000 <- data_entry[data_entry$Salaries > 50000, ]
print(grthan50k)

# Load the built-in iris dataset and use summary() to analyze it.
View(iris)
summary(iris)

# Create a vector with 15 random numbers and find its mean, median, 
# min, max, and range.
vect <- c(2, 4, 6, 8, 10, 10, 10, 16, 18, 20, 22, 24, 26, 28, 30)
mean(vect)
median(vect)
min(vect)
max(vect)
range(vect)
# 
# unique(): Finds unique values.
# tabulate(): Counts occurrences.
# which.max(): Finds the most frequently occurring value.

# mode function 
getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(vect)


getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(vect)
pie(table(vect))

# Create a dataset of different types of fruits sold in a store and plot 
# a pie chart.
sold <- c(4333, 7988, 6834, 6487, 6483, 4345, 4843, 8092)
View(sold)
pie(table(sold))

# barplot 
barplot(mtcars$cyl, xlab = "X-Axis", ylab = "Y-Axis", main = "BARPLOT OF CYL")

# Load the iris dataset and create a bar plot for Sepal.Length.
barplot(iris$Sepal.Length, xlab = "X-Axis", ylab = "Y-Axis", main = "BARPLOT OF SEPAL.LENGTH")

View(iris)
summary(iris)

View(mtcars)
summary(mtcars)

print(class(mtcars$disp))

#Creates Probability Dist Table
#x <- start : #end (end is included)
X <- 0:3
PX <- dbinom(X, size = 3, prob = 0.5)
toss <- data.frame(X, PX)
View(toss)

# 
X <- 0:3
# d.r.v == dbinom
PX <- dbinom(X, size = 3, prob = 0.5)
toss <- data.frame(X, PX)
View(toss)

# Compute P(0 ≤ X ≤ 2)
# sum function
p1 <- sum(toss$PX[toss$X >= 0 & toss$X <= 2])
print(p1)

# Compute P(0 ≤ X ≤ 2)
p2 <- sum(toss$PX[toss$X >= 2])
print(p2)

# 4-coin toss and compute P(1≤X≤3).
X <- 0:4
PX <- dbinom(X, size = 4, prob = 0.5)
toss <- data.frame(X, PX)
View(toss)

p <- sum(toss$PX[toss$X >= 1 & toss$X <= 3])
print(p)

#  Probability Distribution for Dice Rolls

# coins - H/T
# X2 <- c()
# PX2 <- c()
# for (h in 0:3) { # number of heads
#   X2 <- c(X2, h-(3 - h))
#   PX2 <- c(PX2, choose(3, h) * (1/2)^3)
# }
# toss <- data.frame(X2, PX2)
# View(toss)
# 

X2 <- c()
PX2 <- c()
for (h in 0:3) {
  X2 <- c(X2, h - (3 - h))
  PX2 <- c(PX2, choose(3, h) * (1/2)^3)
}
toss <- data.frame(X2, PX2)
View(toss)
# Compute P(X < 1)
p1 <- sum(toss$PX2[toss$X2 < 1])
p2 <- sum(toss$PX2[toss$X2 >= 3])


# 3. Probability Distribution for Dice Rolls (Difference Between Two Faces)
X3 <- 0:5 # min_diff = 0, max_diff = 5
PX3 <- numeric(length(X3))

for(m in 1:6){
  for(n in 1:6){
    a <- abs(m - n)
    idx <- which(X3 == a)
    PX3[idx] <- PX3[idx] + 1 # increment
  }
}
PX3 <- PX3 / 36
toss <- data.frame(X3, PX3)
View(toss)
print(sum(toss$PX3))

p3 <- toss$PX3[toss$X3 < 1]
p4 <- sum(toss$PX3[toss$X3 >= 2])



# practice
X4 <- 2:12
PX4 <- numeric(length(X4))

for(m in 1:6){
  for(n in 1:6){
    a <- m + n
    idx <- which(X4 == a)
    PX4[idx] = PX4[idx] + 1
  }
}
PX4 <- PX4 / 36
toss <- data.frame(X4, PX4)
View(toss)
print(sum(toss$PX4))


X5 <- 0:5
PX5 <- numeric(length(X5))

for(i in 1:6){
  for(j in 1:6){
    ans <- abs(i - j)
    idx <- which(X5 == ans)
    PX5[idx] = PX5[idx] + 1
  }
}
PX5 <- PX5 / 36
toss <- data.frame(X5, PX5)
View(toss)

P <- sum(toss$PX5[toss$X5 >= 1 & toss$X5 <= 3])
print(p)


# difference between three dice
X <- -11:4
PX <- numeric(length(X))
for(i in 1:6){
  for(j in 1:6){
    for(k in 1:6){
      a <- i - ( j + k)
      id <- which(X == a)
      PX[id] <- PX[id] + 1
    }
  }
}
PX <- PX/6^3
toss <- data.frame(X, PX)
View(toss)
print(sum(toss$PX))


# 5. Probability Distribution for Product of Dice Rolls
# x <- 1:36
# Px <- numeric(length(x))
# for(i in 1:6){
#   for(j in 1:6){
#     a  <- i * j
#     id <- which(x == a)
#     Px[id] = Px[id] + 1
#   }
# }
# Px <- Px/36
# toss <- data.frame(x, Px)
# View(toss)
# print(sum(toss$Px))


# Simulate 5 dice rolls and find the probability distribution of their sum.
x <- 5:30
Px <- numeric(length(x))
for(i in 1:6){
  for(j in 1:6){
    for(k in 1:6){
      for(l in 1:6){
        for(m in 1:6){
          a <- i + j + k + l + m
          id <- which(x == a)
          Px[id] <- Px[id] + 1
        }
      }
    }
  }
}
Px <- Px / 6^5
toss <- data.frame(x, Px)
View(toss)
print(sum(toss$Px))


# Compute P(X≥2) for a 5-coin toss.
# X <- 0:5
# PX <- dbinom(X, size = 5, prob = 0.5)
# toss <- data.frame(X, PX)
# View(toss)
# print(sum(toss$PX))
# 
# p <- sum(toss$PX[toss$X >= 2])
# print(p)
# 
# 
# X <- 1:6^3
# PX <- numeric(length(X))
# for(i in 1:6){
#   for(j in 1:6){
#     for(k in 1:6){
#       a <- i * j * k
#       id <- which(X == a)
#       PX[id] = PX[id] + 1
#     }
#   }
# }
# PX <- PX/ 6^3
# toss <- data.frame(X, PX)
# View(toss)
# print(sum(toss$PX))

#Modify the code to compute the 
#probability distribution for 4 coin tosses and find:
# P(−2≤X2≤2)
# P(X2>2)

X <- c()
PX <- c()
for(h in 0:4){
  X <- c(X, h - (4 - h))
  PX <- c(PX, choose(4, h) * (0.5)^4)
}
toss <- data.frame(X, PX)
View(toss)
print(sum(toss$PX))



# probability density functions 
# 1st one 
cp1 <- function(x){
  ifelse(x >= 0 & x <= 20, 1/20, 0)
}
# 2nd one 
cp2 <- function(x){
  ifelse(x >= 0 & x < 2, x/8, 
         ifelse(x >= 2 & x < 4, 1/4, 
                ifelse(x >= 4 & x < 6, -(x/8) + (3/4), 0)))
}
# 3rd one 
cp3 <- function(x){
  ifelse(x >= 0 & x <= 5, (2/75) * x, 
         ifelse(x > 5 & x <= 10, 2/15, 0))
}

curve(cp1, -1, 21, col="blue", main="Q1", xlab = "X", ylab = "f(X)")
curve(cp2, -1, 7, col= "red", main = "Q2", xlab= "X", ylab = "f(X)")
curve(cp3, -1, 11, col= "green", main= "Q3", xlab = "X", ylab = "f(X)")

ans1<- integrate(cp1, lower = 4, upper = 20)
print(ans1)
ans2 <- integrate(cp2, lower = 4, upper = 6)
print(ans2)
ans3 <- integrate(cp3, lower = 4, upper = 10)
print(ans3)


# mean E(X) for the first second pdf
integrate(cp2, lower = 0, upper = 6)
mean_cp2 <- function(x){x * cp2(x)}
integrate(mean_cp2, lower =0 , upper = 6)

mean_squared_function_2 <- function(x){x^2 * cp2(x)}
E_X_2 <- integrate(mean_squared_function_2, lower = 0, upper = 6)$value
E_X <- integrate(mean_cp2, lower = 0, upper = 6)$value
var <- E_X_2 - (E_X)^2
print(var)


cp4 <- function(x){
  ifelse(x>= 0 & x <= 2, 3/8 * x^2, 0)
}
E_ofX <- integrate(cp4, lower = 0, upper = 2)$value
mean_2 <- function(x){x^2 * cp4(x)}
E_X_of2 <- integrate(mean_2, lower = 0, upper = 2)$value
var2 <- E_X_of2 - (E_ofX)^2
print(var2)

y <- dbinom(0:25, size = 20, prob = 0.5)
plot(0:25, y, type = "b")


plot(dpois(x=1:50, lambda = 3))

print(sum(dpois(6:8,10)))

# Given values
n <- 10
s <- 1.2
sigma0 <- 0.9

# Chi-square test statistic
chi_sq <- (n - 1) * s^2 / sigma0^2
chi_sq

# p-value (right-tailed)
p_value <- pchisq(chi_sq, df = n - 1, lower.tail = FALSE)
p_value


O <- c(28, 36, 36, 30, 27, 23)
E <- rep(30, 6)

ans <- chisq.test(c(28, 36, 36, 30, 27, 23))
ans
