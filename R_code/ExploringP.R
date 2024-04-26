#Scenario 1, b)
library(igraph)

#Exploring p Deepen the Erdos-Renyi Graphs for different values of p,
explore_p_values <- function(p_values, n, iterations) {
  results <- list()
  
#The degree distribution, the structure of the adjacency matrix, the average path length  
#Maximum eigenvalue, maximum degree
#The dimension of the largest connected component  
   for (p in p_values) {
    degree_distributions <- list()
    avg_path_length <- c()
    max_eigenvalues <- c()
    largest_connected_components <- c()
    
    for (i in 1:iterations) {
      graph <- erdos.renyi.game(n, p, directed = FALSE)
      degrees <- degree(graph)
      degree_distributions[[i]] <- degrees
      avg_path_length <- c(avg_path_length, average.path.length(graph))
      max_eigenvalues <- c(max_eigenvalues)
      components <- clusters(graph) 
      largest_connected_component <- max(components$csize)
      largest_connected_components <- c(largest_connected_components, largest_connected_component)
    }

#Explore the results, possibly with graphical representations 
#The maximum eigenvalue of the adjacency matrix, the maximum degree, the largest component
    results[[as.character(p)]] <- list(
      p = p,
      degree_distribution = degree_distributions,
      average_path_length = avg_path_length,
      max_eigenvalue = max_eigenvalues,
      largest_connected_component = largest_connected_components
    )
  }
  
  return(results)
}

#Different values of p
p_values <- c(0.001, 0.005, 0.01, 0.05, 0.1, 0.5, 0.9)
n <- 100  # Number of nodes in the graph
num_iterations <- 10

# Explore Erdos-Renyi graphs for different p values
results <- explore_p_values(p_values, n, iterations)

par(mfrow = c(2, 4))
for (p in p_values) {
  result <- results[[as.character(p)]]
  hist(unlist(result$degree_distribution), main = paste("Degree distribution for p =", p), breaks = 20)
  hist(result$average_path_length, main = paste("Average for p =", p), breaks = 20)
  hist(result$largest_connected_component, main = paste("Largest connected component size for p =", p), breaks = 20)
}

