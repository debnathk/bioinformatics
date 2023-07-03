# example 1
square <- function(x){
  return(x^2)
}

result <- square(5)
print(result) # output: 25

# example 2
power <- function(x, n=2){
  return(x^n)
}

result1 <- power(3)
print(result1) # output: 9
result2 <- power(3, 3) 
print(result2) # output: 27

# example 3
stats <- function(data){
  mean_val <- mean(data)
  median_val <- median(data)
  return(list(mean = mean_val, median=median_val))
}

data <- c(10, 20, 30)
results <- stats(data)
print(results$mean) # output: 20
print(results$median) # output: 20