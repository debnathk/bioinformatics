## Vectors

# Numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Character vector
character_vector <- c("apple", "banana", "orange")

# Logical vector
logical_vector <- c(TRUE, FALSE, TRUE)

# Accessing elements
numeric_vector[1]   # Output: 1
character_vector[2] # Output: "banana"
logical_vector[3]   # Output: TRUE

# Numeric vector operations
x <- c(1, 2, 3)
y <- c(4, 5, 6)

addition_result <- x + y      # Output: 5 7 9
subtraction_result <- x - y   # Output: -3 -3 -3
multiplication_result <- x * y # Output: 4 10 18
division_result <- x / y      # Output: 0.25 0.4 0.5

# Logical vector operations
a <- c(TRUE, TRUE, FALSE)
b <- c(FALSE, TRUE, FALSE)

and_result <- a & b          # Output: FALSE TRUE FALSE
or_result <- a | b           # Output: TRUE TRUE FALSE
not_result <- !a             # Output: FALSE FALSE TRUE

# Length of a vector
length(numeric_vector)      # Output: 5

# Sum of elements in a numeric vector
sum(numeric_vector)         # Output: 15

# Mean of elements in a numeric vector
mean(numeric_vector)        # Output: 3

# Sorting a vector
sorted_vector <- sort(numeric_vector)  # Output: 1 2 3 4 5

# Concatenating two vectors
combined_vector <- c(numeric_vector, character_vector) 
# Output: 1 2 3 4 5 "apple" "banana" "orange"