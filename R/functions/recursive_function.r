factorial <- function(x){
  if(x == 0 | x == 1){
    return(1)
  }else
  {
    return(x * factorial(x-1))
  }
}

result <- factorial(6)
print(result) # output: 720