# Correcting p-values to account for multiple hypotheses (while no of samples is
# small and no of genes is large, in an gene expression experiment)

## Run 10,000 tests ####
set.seed(1)
random_number_t_test <- function(n){
  x <- rnorm(10)
  y <- rnorm(10)
  return(t.test(x, y)$p.value)
}

p_values <- sapply(1:10000, random_number_t_test)
p_values

## Assess the number of p-values <= 0.05 ####
sum(p_values <= 0.05)

## Adjust p_values ####
adj_p_values <- p.adjust(p_values, method = "holm")
adj_p_values

## Re-assess the number of p-values ####
sum(adj_p_values <= 0.05)
