# Creating a data frame with three columns: Name, Age, and Score
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 22, 28),
  Score = c(85, 92, 78, 88)
)

# Printing the data frame
print(df)

# Creating individual vectors for Name, Age, and Score
name <- c("Alice", "Bob", "Charlie", "David")
age <- c(25, 30, 22, 28)
score <- c(85, 92, 78, 88)

# Combining the vectors into a data frame
df <- data.frame(Name = name, Age = age, Score = score)

# Printing the data frame
print(df)

# Accessing elements
print(df[1, 2])      # Accessing the element in the first row and second column
print(df$Name)       # Accessing the 'Name' column
print(df[, "Age"])   # Accessing the 'Age' column

# Accessing rows
print(df[2, ])       # Accessing the second row of the data frame

# Accessing subsets of data frame
print(df[df$Age > 25, ])       # Selecting rows where Age is greater than 25

# Adding a new column to the data frame
df$City <- c("New York", "Los Angeles", "Chicago", "Houston")

# Modifying an existing column
df$Score <- df$Score + 5

# Printing the updated data frame
print(df)

# Computing summary statistics
summary(df$Age)      # Summary statistics for the 'Age' column
summary(df$Score)    # Summary statistics for the 'Score' column

# Removing a column
df <- df[, -4]       # Removes the 'City' column

# Removing a row
df <- df[-2, ]       # Removes the second row

