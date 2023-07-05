# creating dataframe
data <- data.frame(
  Names = c("Ram", "Sita", "Laxman"),
  Age = c(25, 22, 20),
  Marks = c(99, 93, 95)
)

View(data)

# grouping data and calculating summary statistics
library(dplyr)
summary_data <- data %>%
  group_by(Names) %>%
  summarise(mean_Age = mean(Age), max_Marks = max(Marks))
View(summary_data)

# reshaping data from wide to long format
library(tidyr)
long_data <- gather(data, key = "variable", value = "value", -Names)
View(long_data)

# merging two dataframes based upon a common key
data_copy <- data
merged_data <- merge(data, data_copy, by = "Names")
View(merged_data)

# applying a function to each group in a dataframe
my_function <- function(x){
  return(x^2)
}

library(dplyr)
result_data <- data %>%
  group_by(Names) %>%
  mutate(new_column = my_function(Age))
View(result_data)
