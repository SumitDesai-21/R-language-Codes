# Operators in R are symbols that perform operations on 
# variables and values.
# There are five main types of operators in R:
# 1️⃣ Arithmetic Operators
# 2️⃣ Relational (Comparison) Operators
# 3️⃣ Logical Operators
# 4️⃣ Assignment Operators
# 5️⃣ Special Operators

2**3
2^3
2 %% 3 # modulo --> remainder
6 %% 3 
# integer division --> Quotient
5 %/% 3

a <- 5
b <- 10
a == b
a != b
a <= b
a >= b

# using %in%
values <- c(1, 2, 3, 4, 5, 6)
print(5 %in% values)
print(6 %in% values)
print(10 %in% values)

# using %*% for matrix multiplication 
A <- matrix(1:4, nrow = 2)
B <- matrix(5:8, nrow = 2)
result <- print(A%*%B)
print(A)
