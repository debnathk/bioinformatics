# perform t-test for two independent samples

group1 <- c(23, 45, 67, 34, 56)
group2 <- c(32, 41, 57, 29, 61)
t.test(group1, group2)

# perform chi-square test for independence
table <- matrix(c(15, 10, 20, 30), nrow = 2)
chisq.test(table)