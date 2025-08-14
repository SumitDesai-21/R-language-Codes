a <- 10
b <- 20
c <- 30L
# checking a data type of a variable
print(class(a)) # numeric
print(class(b)) # numeric
print(class(c)) # Integer

c <- (5 > 3)
print(class(c))

# Complex Numbers 
a <- 2 + 3i
b <- 2 - 3i
c <- a/b
print(c)


# vectors -> collection of similar data type 
nums <- c(10, 20, 30, 40)
print(nums)

# Lists Can store multiple data types (unlike vectors).
List <- list(25, "sumit", 2 + 3i, TRUE)
print(List)
print(class(List))

# matrices 
# 2D Array 
mat <- matrix(1:9, 3, 3)
print(mat)
print(class(mat))

#data frames == tables in spreadsheet
students <- data.frame(Name= c("sumit", "anay"), Age= c(19, 20), 
                       Cgpa=c(8.65, 9.25))
print(students)

# Factors:- Used to store categorical data.
colors <- factor(c("red", "blue", "red", "green"))
print(colors)
print(class(colors))
