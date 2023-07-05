# creating dataframe
data <- data.frame(
  Name = c("Jay", "Ajay", "Vijay"),
  Age = c(22, NA, 23),
  Marks = c(99, 93, 96)
)

View(data)

# handling missing values - removing rows
cleaned_data <- na.omit(data)
View(cleaned_data)

# handling missing values - replace with mean
data_copy <- data
data_copy$Age[is.na(data_copy$Age)] <- mean(data_copy$Age, na.rm = TRUE)
View(data_copy)

# scaling numeric variables - min-max normalization
scaled_data <- data
scaled_data$Marks <- (data$Marks - min(data$Marks)/(max(data$Marks) - min(data$Marks)))
View(scaled_data)

# encoding categorical vraibales - one-hot encoding
library(tidyverse)
encoded_data <- data %>%
  mutate(Name = as.factor(Name)) %>%
  mutate(across(everything(), ~as.integer(.)))
View(encoded_data)
