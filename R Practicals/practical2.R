# practical No.-2
MIS <- 612415049

# Q.1
height <- c(140, 137, 150, 147, 139, 140, 150, 132, 138, 140)
weight <- c(55, 57, 59, 62, 61, 60, 60, 58, 59, 57)
data <- data.frame(Height = height, Weight = weight)
height_lessthan_130 <- data[data$Height < 130, ]
even_height <- data[data$Height %% 2 == 0, ]
variable_weight <- data[data$Weight > 55 & data$Weight < 65, ]
heights <- table(height)
print(heights)
# Q.2
prime <- function(n){
  if(n <= 1){
    return(FALSE)
  }
  for(i in 2:sqrt(n)){
    if(n %% i == 0){
      return(FALSE)
    }
  }
  return(TRUE)
}
prime(7)
TRUE
prime(11)
TRUE
prime(121)
FALSE

# Q.3
factorial <- function(n){
  if(n == 0 | n == 1){
    return(1)
  }else{
    return(n * factorial(n - 1))
  }
}
factorial(7)
5040
factorial(11)
39916800
factorial(6)
720

# Q.4
Prize <- c(10, 15, 30, 40, 50, 60)
Quantity <- c(4, 20, 15, 10, 16, 8)
data2 <- data.frame(prize = Prize, quantity = Quantity)

# Q.5
Name <- c("Rahul", "Priya", "Rohit", "Shruti", "David")
Department <- c("HR", "Finance", "IT", "Marketing", "Sales")
DA <- c(4500, 6000, 5200, 4800, 7000)
employee_data <- data.frame(name = Name, department = Department, DA = DA)
DA_greaterthan_5000 <- employee_data[employee_data$DA > 5000, ]

