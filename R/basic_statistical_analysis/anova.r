# perform one-way anova (analysis of variance)

group1 <- c(23, 45, 67, 34, 56)
group2 <- c(32, 41, 57, 29, 61)
group3 <- c(11, 19, 22, 28, 31)
anova_result <- aov(c(group1, group2, group3) ~ rep(c("Group1", "Group2", "Group3"), each = 5))
summary(anova_result)
