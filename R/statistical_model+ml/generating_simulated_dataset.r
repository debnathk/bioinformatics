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

## Sampling from a normal distribution ####
rand_norms_10 <- rnorm(n = 10, mean = 0, sd = 1)
rand_norms_10

## Visualizing a normal distribution ####
rand_norms_1000 <- rnorm(n = 1000, mean = 0, sd = 1)
hist(rand_norms_1000,
     xlab = "Random value (X)",
     main = "",
     cex.lab  = 1.5,
     cex.axis = 1.5)

## Sampling from a Poisson distribution ####

## Visualizing a poisson distribution ####

## Sampling from a bionomial distribution ####

## Visualizing a binomial distribution ####

## Sampling random characters from a list ####

## Simulating data with known correlations ####

## Simulating a full dataset

