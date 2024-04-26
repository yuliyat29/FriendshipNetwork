#Scenario 2,b)
#Function to exploring n for different values of n
explore_n_values <- function(values, iterations) {
  results <- list()
  
#Explore how minimum, maximum and, mean varies across iterations
  for (n in values) {
    min <- c()
    max <- c()
    mean <- c()
    
    for (i in 1:iterations) {
      data <- runif(n)
      min <- c(min, min(data))
      max <- c(max, max(data))
      mean <- c(mean, mean(data))
    }
    
    results[[as.character(n)]] <- list(
      n = n,
      min = min,
      max = max,
      mean = mean
    )
  }
  
  return(results)
}

#Different values of n
values <- c(10, 100, 1000, 10000)
iterations <- 100

#Explore iterations
results <- explore_n_values(values, iterations)

par(mfrow = c(1, length(values)))

for (n in values) { 
  result <- results[[as.character(n)]]
}
  hist(result$min, main = paste("Minimum for n =", n), breaks = 20)
  hist(result$max, main = paste("Maximum for n =", n), breaks = 20)
  hist(result$mean, main = paste("Mean varies for n =", n), breaks = 20)




