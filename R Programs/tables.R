# create a vector of languages
languages<- c("Java", "Python", "C", "R", "Python", "Java", "R"
              , "Python")
# creating a frequency table
langtable <- table(languages)
#print(langtable)

# summary() function it gives quick descriptive statistics 
# about data
# create a numeric vector 

nums<- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
#print(summary(nums))

# rbind() and cbind() functions
# rbind() -> row binding -> adds rows to a matrix or dataframe
# cbind() -> column binding -> adds cols to a matrix or dataframe

# creating three rows
stu1 <- c("sumit", 049, 8.65)
stu2 <- c("anay", 115, 9.25)
stu3 <- c("ameya", 118, 9.9)

students <- rbind(stu1, stu2, stu3)
#print(students)

# creating three columns 
car1 <- c("TATA Curvv", "TATA Safai", "TATA Nexon")
car2 <- c("Tesla X", "Tesla Y", "Tesla R")
car3 <- c("Mercedes-Benz", "S-Class", "EQE SUV")

cars <- cbind(car1, car2, car3)
print(cars)
View(cars)
