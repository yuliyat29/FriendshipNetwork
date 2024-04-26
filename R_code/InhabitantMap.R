#Scenario 2, b)
library(igraph)

#Create the inhabitant map for n = 1000...
n <- 1000
size <- 50
map <- matrix("Empty", nrow = size, ncol = size)

#Euclidian function
euclidean_distance <- function(individual1, individual2) {
  sqrt((individual1[1] - individual2[1])^2 + (individual1[2] - individual2[2])^2)
}

#The distance within each particular geographical area
populate<- function() {
# Show and compare the results possibly with interesting graphical representations
  features <- c("Desert", "Mountain", "River", "City")
  for (i in 1:size) {
    for (j in 1:size) {
      map[i, j] <- sample(features, 1)
    } 
  }
}

populate()

# Function to compute distances among all the possible individuals on the map
distance <- function() {
  individuals <- expand.grid(x = 1:size, y = 1:size)
  individuals_distances <- matrix(0, nrow = n, ncol = n)
  
  for (i in 1:n) {
    for (j in 1:n) {
      individual1 <- individuals[i, ]
      individual2 <- individuals[j, ]
      #individuals_distances[i, j] <- euclidean_distance(individual1, individual2)
    }
  }
  
  return(individuals_distances)
}

#Distance among all the possible individuals
individuals_distances <- distance()

#Compute the average, mininum, and maximum distance
average_distance <- mean(individuals_distances)
minimum_distance <- min(individuals_distances)
maximum_distance <- max(individuals_distances)

cat("Average Distance: ", average_distance, "\n")
cat("Minimum Distance: ", minimum_distance, "\n")
cat("Maximum Distance: ", maximum_distance, "\n")

#Distance matrix
ggplot(as.data.frame(individuals_distances), aes(x = Var1, y = Var2, fill = Freq)) +
  geom() +
  gradient(low = "black", high = "blue") +
  minimal()

geo <- function(area){
  
individuals_area <- which(map == area, arr.ind = TRUE)

distance_area <- individuals_distances[individuals_area, individuals_area]  

ggplot(as.data.frame(distance_area), aes(x = Var1, y = Var2, fill = Freq)) +
  geom() +
  gradient(low = "black", high = "blue") +
  minimal()  
}


  