# converting data types in R 
x <- c(10, "Hello", TRUE)
print(x)
print(class(x))
#  R cannot mix numbers and characters, 
# everything gets converted to character.

num <- 16
class(num)
number <- as.integer(num)
print(number)
class(number)

str <- "sumit"
print(as.numeric(str)) # NA 

# convert to integer
x <- 7.8
int_x <- as.integer(x)
print(int_x)
class(int_x)
# decimal values gets truncated 

real_part <- 3
comp_num <- as.complex(real_part)
print(comp_num)

# Type conversion in data frames 
df <- data.frame(Age=c("18", "24", "30"), Score = c("85", "90", "95"))
print(df)

df$Age <- as.numeric(df$Age)
print(class(df$Age))
