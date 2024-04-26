#Scenario 2, b)
library(igraph)

#Create the inhabitant map for n = 1000...
n <- 1000
matrix_distance <- matrix(runif(n^2), n, n) 

#Compute adjacency matrix
create_adjacency_matrix <- function(matrix_distance, beta) {
  adjacent_matrix <- ifelse(distance_matrix, 1, 0)
  return(adjacent_matrix)
}

properties <- function(adjacent_matrix) 
 graph <- graph.adjacency(adjacent_matrix, mode = "undirected", weighted = TRUE)
  
#Inspecting the degree distribution, the structure of the adjacency matrix, the average path length
#The dimension of the largest connected component
  mean_degree <- mean(degree(graph))
  degree_distribution <- degree_distribution(graph)
  average_path_length <- mean(average.path.length(graph))
  largest_connected_component <- max(components(graph)$csize)
  
  return(list(
    mean_degree = mean_degree,
    degree_distribution = degree_distribution,
    average_path_length = average_path_length,
    largest_connected_component = largest_connected_component
  ))


#Plotting the values of β versus the mean degree of the graph.
plot(results$beta, results$mean_degree, type = "l", xlab = "β", ylab = "Mean Degree")
  
#Mean degrees
mean_degrees <- c(5, 10, 15)

for (beta in specific_betas) {
  adjacency_matrix <- create_adjacency_matrix(distance_matrix, beta)
  network_properties <- analyze_network_properties(adjacency_matrix)
  
  #cat("Beta:", beta, "\n")
  #cat("Mean Degree:", properties$mean_degree, "\n")
  #cat("Degree Distribution:", properties$degree_distribution, "\n")
  #cat("Average Path Length:", properties$average_path_length, "\n")
  #cat("Largest Connected Component:", properties$largest_connected_component, "\n")
}
#Scenario 2, b)
library(igraph)

#Create the inhabitant map for n = 1000...
n <- 1000
matrix_distance <- matrix(runif(n^2), n, n) 

#Compute adjacency matrix
create_adjacency_matrix <- function(matrix_distance, beta) {
  adjacent_matrix <- ifelse(distance_matrix, 1, 0)
  return(adjacent_matrix)
}

properties <- function(adjacent_matrix) 
  graph <- graph.adjacency(adjacent_matrix, mode = "undirected", weighted = TRUE)

#Inspecting the degree distribution, the structure of the adjacency matrix, the average path length
#The dimension of the largest connected component
mean_degree <- mean(degree(graph))
degree_distribution <- degree_distribution(graph)
average_path_length <- mean(average.path.length(graph))
largest_connected_component <- max(components(graph)$csize)

return(list(
  mean_degree = mean_degree,
  degree_distribution = degree_distribution,
  average_path_length = average_path_length,
  largest_connected_component = largest_connected_component
))


#Plotting the values of β versus the mean degree of the graph.
plot(results$beta, results$mean_degree, type = "l", xlab = "β", ylab = "Mean Degree")

#Mean degrees
mean_degrees <- c(5, 10, 15)

for (beta in specific_betas) {
  adjacency_matrix <- create_adjacency_matrix(distance_matrix, beta)
  network_properties <- analyze_network_properties(adjacency_matrix)
  
  #cat("Beta:", beta, "\n")
  #cat("Mean Degree:", properties$mean_degree, "\n")
  #cat("Degree Distribution:", properties$degree_distribution, "\n")
  #cat("Average Path Length:", properties$average_path_length, "\n")
  #cat("Largest Connected Component:", properties$largest_connected_component, "\n")
}













  
