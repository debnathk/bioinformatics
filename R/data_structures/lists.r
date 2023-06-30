# Lists

# Creating a list with different types of elements
my_list <- list(
  name = "Alice",
  age = 25,
  scores = c(85, 92, 78, 88),
  is_student = TRUE,
  details = data.frame(city = "New York", gender = "Female")
)

# Printing the list
print(my_list)

# Accessing elements
print(my_list$name)
print(my_list[["age"]])
print(my_list[[3]])

# Adding new elements
my_list$occupation <- "Engineer"

# Updating existing elements
my_list$name <- "Alicia"

# Creating nested lists
nested_list <- list(
  list(a = 1, b = 2),
  list(x = "hello", y = "world")
)

# Accessing elements from nested lists
print(nested_list[[1]]$a)
print(nested_list[[2]]$x)

# Checking the length of the list
list_length <- length(my_list)
print(list_length)

# Displaying the structure of the list
str(my_list)

# Removing elements from the list
my_list$age <- NULL