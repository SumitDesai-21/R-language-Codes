#Q.3
# students_data
View(students_data)
head(students_data)

# statistical data
mean_UGPG <- mean(students_data$`UG/PG`)
median_UGPG <- median(students_data$`UG/PG`)
max_UGPG <- max(students_data$`UG/PG`)
min_UGPG <- min(students_data$`UG/PG`)
range_UGPG <- range(students_data$`UG/PG`)

get_mode <- function(x){
  freq_table <- table(x)
  max_freq <- max(freq_table)
  mode_values <- as.numeric(names(freq_table[freq_table == max_freq]))
  return(mode_values)
}
mode_value_UGPG <- get_mode(students_data$`UG/PG`)
print(mode_value_UGPG)
# summary
summary(students_data$`UG/PG`)


# Pie chart
pie_data <- c(sum(students_data$`UG/PG`), sum(students_data$Total))
labels <- c("UG/PG", "Total Unemployed")

pie(pie_data, labels = labels, col = c("blue", "red"), main = "UG/PG vs. Total Unemployed Students")

# Scatter Plot
plot(students_data$`HSC/UG`, students_data$Total, 
     main = "HSC/UG vs. Total Unemployed Students", 
     xlab = "HSC/UG", ylab = "Total Unemployed",
     col = "blue", pch = 19)

