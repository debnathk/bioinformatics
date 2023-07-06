# perform simple linear regression

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
lm_model <- lm(y ~ x)
summary(lm_model)

# predict new values using regression model
new_x <- c(6, 7, 8)
predicted_y <- predict(lm_model, data.frame(x = new_x))
predicted_y
