# Q.1
data <- c(2.3, 4.4, 5, 5, 6, 6.5, 6.5, 6.5, 6.5, 8.6, 9.2, 4.4, 4.4, 5.4, 5, 2, 4.4)
# mean
mean_value <- mean(data)
print(mean_value)
# median
median_value <- median(data)
print(median_value)

# mode
get_mode <- function(x) {
  freq_table <- table(x) 
  max_freq <- max(freq_table) 
  mode_values <- as.numeric(names(freq_table[freq_table == max_freq]))
  return(mode_values)
}
mode_value <- get_mode(data)
print(mode_value)

# minimun
min_value <- min(data)
print(min_value)

#max value
max_value <- max(data)
print(max_value)

