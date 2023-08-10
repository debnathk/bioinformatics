# Generating a simulated dataset to represent a background ####

## Sampling from a uniform distribution ####
set.seed(1)
rand_unifs_10 <- runif(n = 10, min = 0, max = 1)
rand_unifs_10

## Visualizing a uniform distribution
rand_unifs_1000 <- runif(n = 1000, min = 0, max = 1)
hist(rand_unifs_1000,
     xlab = "Random value (X)",
     main = "",
     cex.lab = 1.5,
     cex.axis = 1.5)