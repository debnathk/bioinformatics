## Question 1: ####
#   Write an R code to calculate the sum of all numbers from 1 to 10 and store the
#   result in a variable called `sum_result`.
# Solution

sum_result <- sum(1:10)
sum_result

# Question 2: ####
#   Write a function in R called `multiply_by_two` that takes a numeric vector as
#   input and returns a new vector with each element multiplied by 2. For example,
#     if the input vector is `c(1, 2, 3, 4)`, the function should return `c(2, 4, 6, 8)`.
# Solution:

multiply_by_two <- function(x){
  return(x*2)
}
y <- multiply_by_two(x)

# Question 3: ####
#   Create a data frame in R called `student_scores` with the following data:
#   ```
# Name   Score
# John   85
# Emily  92
# Daniel 78
# Sophia 88
# ```
# Write R code to add a new column called `Grade` to the `student_scores` data frame,
# which assigns grades 'A', 'B', 'C', or 'D' based on the following criteria:
#   - Score >= 90: 'A'
# - Score >= 80: 'B'
# - Score >= 70: 'C'
# - Otherwise: 'D'
# Solution:

student_scores <- data.frame(
  Name = c("John", "Emily", "Daniel", "Sophia"),
  Score = c(85, 92, 78, 88)
)
student_scores$Grade <- ifelse(student_scores$Score >= 90, 'A',
                               ifelse(student_scores$Score >= 80, 'B',
                                      ifelse(student_scores$Score >= 70, 'C', 'D')))
student_scores

# Question 4: ####
#   Write an R code to generate a histogram of 100 random numbers following a normal
#   distribution with a mean of 0 and standard deviation of 1. Set the title of the
#   plot as "Random Numbers Histogram".
# Solution:

set.seed(0)
random_numbers <- rnorm(100, mean=0, sd=1)
hist(random_numbers, main="Random Numbers Histogram")

# Question 5: ####
#   Create a function in R called `calculate_fibonacci` that takes an integer `n`
#   as input and returns a vector of the first `n` Fibonacci numbers. The Fibonacci
#   sequence starts with 0 and 1, and each subsequent number is the sum of the two
#   preceding numbers. For example, if `n = 6`, the function should return `c(0, 1, 1, 2, 3, 5)`.
# Solution:

calculate_fibonacci <- function(n){
  fibonacci <- c(0, 1)
  if(n<=2){
    return(fibonacci[1:n])
  }
  for(i in 3:n){
    fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
  }
  return(fibonacci)
}
calculate_fibonacci(6)
