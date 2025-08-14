# #Q.1
# # expand.grid() -> to generate all possible combinations
prob <- function(){
  outcomes <- expand.grid(c("H", "T"), c("H", "T"), c("H", "T"))
   outcomes <- data.frame(lapply(outcomes, as.character))
  outcomes$Heads <- rowSums(outcomes == "H")

  tables <- as.data.frame(table(outcomes$Heads) / 8)
  colnames(tables) <- c("X", "P(X)")
  tables$X <- as.numeric(as.character(tables$X))

  return(tables)
}
prob_dist <- prob()
print(prob_dist)
View(prob_dist)

#a) P(0<=x<=3)
prob1 <- sum(prob_dist[prob_dist$X <= 2, "P(X)"])
#b) P(x > 2)
prob2 <- sum(prob_dist[prob_dist$X > 2, "P(X)"])
print(prob1)
print(prob2)


# Q.2
diff_prob <- function() {
  outcomes <- expand.grid(c("H", "T"), c("H", "T"), c("H", "T"))  
  outcomes <- data.frame(lapply(outcomes, as.character)) 
  outcomes$Heads <- rowSums(outcomes == "H") 
  outcomes$Tails <- 3 - outcomes$Heads 
  outcomes$X <- outcomes$Heads - outcomes$Tails  
  
  prob_table <- as.data.frame(table(outcomes$X) / 8)  
  colnames(prob_table) <- c("X", "P(X)")  
  prob_table$X <- as.numeric(as.character(prob_table$X))
  
  return(prob_table)
}
dist_table <- diff_prob()
print(dist_table)
View(dist_table)

# a) P(0<=x<=3)
prob3 <- sum(dist_table[dist_table$X >= 0 & dist_table$X <= 3, "P(X)"])
# b) P(x > 3)
prob4 <- sum(dist_table[dist_table$X > 3, "P(X)"])
print(prob3)
print(prob4)



# Q.3
dicediff_prob <- function(){
  outcomes <- expand.grid(DIE1 = 1:6, DIE2 = 1:6)
  outcomes$X <- abs(outcomes$DIE1 - outcomes$DIE2)
  
  tables <- as.data.frame(table(outcomes$X) / 36)
  colnames(tables) <- c("X", "P(X)")
  tables$X <- as.numeric(as.character(tables$X))
  
  return(tables)
}
diff_dist_table <- dicediff_prob()
print(diff_dist_table)
View(diff_dist_table)

# a) P(x<1)
prob5 <- sum(diff_dist_table[diff_dist_table$X < 1, "P(X)"])
# b) P(x>=2)
prob6 <- sum(diff_dist_table[diff_dist_table$X >= 2, "P(X)"])


# Q.4
diceproduct_prob <- function(){
  outcomes <- expand.grid(DIE1 = 1:6, DIE2 = 1:6)
  outcomes$X <- outcomes$DIE1 * outcomes$DIE2
  
  tables <- as.data.frame(table(outcomes$X) / 36)
  colnames(tables) <- c("X", "P(X)")
  tables$X <- as.numeric(as.character(tables$X))
  
  return(tables)
}
product_dist_table <- diceproduct_prob()
print(product_dist_table)
View(product_dist_table)

# a) P(x<1)
prob7 <- sum(product_dist_table[product_dist_table$X >= 4 & product_dist_table$X < 20, "P(X)"])
# b) P(x>=2)
prob8 <- sum(product_dist_table[product_dist_table$X >= 20, "P(X)"])
prob9 <- sum(product_dist_table[product_dist_table$X == 8, "P(X)"])

