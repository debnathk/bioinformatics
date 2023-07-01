# example 1
for(i in 1:5){
  print(i)
}

# output: [1] 1
#         [1] 2
#         [1] 3
#         [1] 4
#         [1] 5

# example 2
fruits <- c("apple", "mango", "banana")
for(fruit in fruits){
  print(paste("I like ", fruit))
}

# output: [1] "I like  apple"
#         [1] "I like  mango"
#         [1] "I like  banana"