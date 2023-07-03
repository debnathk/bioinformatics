# write a file
data <- data.frame(
  Name = c("John", "Alice", "Bob"),
  Age = c(25, 30, 28),
  Salary = c(45000, 55000, 50000)
)
file_path <- "intermediate_file.csv"
write.table(data, file_path, sep = ",", col.names = TRUE, row.names = FALSE)

# read a file
file_path <- "intermediate_file.csv"
read_data <- read.table(file_path, header = TRUE, sep = ",")
print(read_data)

# output:
# Name Age Salary
# 1  John  25  45000
# 2 Alice  30  55000
# 3   Bob  28  50000
