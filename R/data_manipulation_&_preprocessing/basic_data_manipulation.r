# creating a dataframe
data <- data.frame(
  Name = c("Tom", "Dick", "Harry"),
  Age = c(21, 23, 22),
  Marks = c(98, 99, 95)
)

View(data)

# selecting specific columns from dataframe
selected_data <- data[, "Age"]
View(as.data.frame(selected_data))

# filtering rows based on condition
filtered_data <- data[data$Age <= 22, ]
View(as.data.frame(filtered_data))

# sorting dataframe by a specific column
sorted_data <- data[order(data$Marks), ]
View(sorted_data)

