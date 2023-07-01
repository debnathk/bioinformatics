day <- "Monday"
switch(day,
       "Monday" = print("Start of the week"),
       "Sunday" = print("End of the week"),
       print("Some other day")
)

# output: [1] "Start of the week"