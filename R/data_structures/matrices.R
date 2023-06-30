## Matrices

# Create a matrix using matrix() function
matrix_1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Output:
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# Create a matrix from a vector and specify row or column binding
vector_1 <- c(1, 2, 3)
vector_2 <- c(4, 5, 6)

matrix_2 <- rbind(vector_1, vector_2)  # Row binding
# Output:
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6

matrix_3 <- cbind(vector_1, vector_2)  # Column binding
# Output:
#      vector_1 vector_2
# [1,]        1        4
# [2,]        2        5
# [3,]        3        6

# Accessing elements
matrix_1[1, 2]  # Output: 3 (element in the first row, second column)
matrix_2[2, 3]  # Output: 6 (element in the second row, third column)

# Matrix operations
matrix_a <- matrix(c(1, 2, 3, 4), nrow = 2)
matrix_b <- matrix(c(5, 6, 7, 8), nrow = 2)

addition_result <- matrix_a + matrix_b    # Element-wise addition
# Output:
#      [,1] [,2]
# [1,]    6    9
# [2,]   11   14

subtraction_result <- matrix_a - matrix_b  # Element-wise subtraction
# Output:
#      [,1] [,2]
# [1,]   -4   -4
# [2,]   -3   -4

multiplication_result <- matrix_a * matrix_b  # Element-wise multiplication
# Output:
#      [,1] [,2]
# [1,]    5   12
# [2,]   21   32

# Dimension of a matrix (number of rows and columns)
dim(matrix_a)      # Output: 2 2 (2 rows and 2 columns)

# Transpose of a matrix
transpose_matrix_a <- t(matrix_a)
# Output:
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# Matrix multiplication
matrix_c <- matrix_a %*% matrix_b
# Output:
#      [,1] [,2]
# [1,]   19   22
# [2,]   43   50
