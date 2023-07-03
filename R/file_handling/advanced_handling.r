# writing a file
data <- c(10, 20, 30)
file_path <- "advanced_file.bin"
writeBin(data, file_path)

# reading a file
file_path <- "advanced_file.bin"
read_file <- readBin(file_path, what = "integer")
print(read_file) # output: 0