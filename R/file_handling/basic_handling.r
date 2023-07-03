# writing a file
text <- "Hi, I am Kusal."
file_path <- "basic_file.txt"
writeLines(text, file_path)

# reading a file
file_path <- "basic_file.txt"
read_text <- readLines(file_path)
print(read_text) # output: "Hi, I am Kusal"