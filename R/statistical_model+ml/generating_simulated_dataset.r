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
rand_poiss_10 <- rpois(n = 10, lambda = 1.5)
rand_poiss_10

## Visualizing a Poisson distribution ####
rand_poiss_1000 <- rpois(n = 1000, lambda = 4.5)
hist(rand_poiss_1000,
     xlab = "Random value (X)",
     main = "",
     cex.lab = 1.5,
     cex.axis = 1.5)

## Sampling from a bionomial distribution ####
coin_flips <- rbinom(n = 1, size = 1000, prob = 0.5)
coin_flips
coin_flips_2 <- rbinom(n = 2, size = 1000, prob = 0.5)
coin_flips_2

## Visualizing a binomial distribution ####
coin_flips_1000 <- rbinom(n = 1000, size = 1000, prob = 0.5)
hist(coin_flips_1000,
     xlab = "Random value (X)",
     main = "",
     cex.lab = 1.5,
     cex.main = 1.5)

## Sampling random characters from a list ####

## Simulating data with known correlations ####

## Simulating a full dataset

