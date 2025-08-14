# Q.2
# built in dataset mtcars

data("mtcars")
head(mtcars)
num_vars <- sapply(mtcars, is.numeric)
numeric_columns <- names(mtcars)[num_vars]
print(numeric_columns)

cylcount <- table(mtcars$cyl)
print(cylcount)

# bar diagram
barplot(cylcount, 
        col = c("blue", "red", "green"),
        main = "Number of Cars by Cylinder Count",
        xlab = "Number of Cylinders",
        ylab = "Count of Cars")

