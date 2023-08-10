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

## Sampling random numbers from a list ####
rand_num_10 <- sample(x = 1:10, size = 10) # No repetition of numbers
rand_num_10
rand_num_10_rpl <- sample(x = 1:10, size = 10, replace = TRUE) # Repeating numbers
rand_num_10_rpl
prob_vec <- c(rep(x = 0.05, times = 5), rep(x = 0.15, times = 5))
prob_vec
rand_num_10_bias <- sample(x = 1:10, size = 10, replace = TRUE, prob = prob_vec)
rand_num_10_bias

## Sampling random characters from a list ####
rand_fruits <- sample(x = c("Mango", "Apple", "Banana"),
                      size = 10,
                      replace = TRUE,
                      prob = c(0.15, 0.35, 0.5))
rand_fruits

## Simulating data with known correlations ####
rho <- 0.3 # Correlation coefficient
x1 <- rnorm(n = 1000, mean = 0, sd = 1)
x2 <- rho*x1 + sqrt(1 - rho*rho) * rnorm(n = 100, mean = 0, sd = 1)
cor(x1, x2) # checking the correlation

library(MASS)
matrix_data <- c(12.68, 13.95, 3.07, 13.95, 30.39, 4.7, 3.07, 4.7, 2.18)
cv_mat <- matrix(data = matrix_data, nrow = 3, ncol = 3, byrow = TRUE) # creating a covariant matrix for M1. M2, M3
rownames(cv_mat) <- c("M1", "M2", "M3")
colnames(cv_mat) <- rownames(cv_mat)
cv_mat
means <- c(159.54, 245.26, 25.52)
sim_data <- mvrnorm(n = 40, mu = means, Sigma = cv_mat) # simulating correlated dataset
sim_data

### Ploting M1, M2 ####
par(mar = c(5, 5, 1, 1))
plot(x = sim_data[,1],
     y = sim_data[,2],
     pch = 20,
     cex  = 1.25,
     cex.lab = 1.25,
     cex.axis = 1.25,
     main = "",
     xlab = expression(paste("Value of ", M[1])),
     ylab = expression(paste("Value of ", M[2])))

## Simulating a full dataset ####

