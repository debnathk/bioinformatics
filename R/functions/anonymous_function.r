# aka lambda function

apply_func <- function(data, func){
  return(func(data))
}

data <- c(1, 2, 3)
result <- apply_func(data, function(x) x^2)
print(result) # output: 1, 4, 9