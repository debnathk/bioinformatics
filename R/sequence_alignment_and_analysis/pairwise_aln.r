library(Biostrings)

# Local alignment ####
pairwiseAlignment(pattern = c("ATTCATATCCGGGATGTTACTTG", "ATTCATATAATGGCACTACTTG"),
                  subject = "ATTTTAATCCGGGATGTTACTTG",
                  type = "local") # Common substring between pattern and subject
  
# Global alignment ####
pairwiseAlignment(pattern = c("ATTCATATCCGGGATGTTACTTG", "ATTCATATAATGGCACTACTTG"),
                  subject = "ATTTTAATCCGGGATGTTACTTG",
                  type = "global") # Default, overall substring match between pattern and subject

# Gap penalty ####
pairwiseAlignment(pattern =  c("ATTCATATCCGGGATGTTACTTG", "ATTCATATAATGGCACTACTTG"),
                  subject =  "ATTTTAATCCGGGATGTTACTTG",
                  gapOpening = 0, 
                  gapExtension = 1)

# Substitution scoring ####
submat <- matrix(-1, nrow = 26, ncol = 26, dimnames = list(LETTERS, LETTERS))
diag(submat) <- 0
pairwiseAlignment(pattern = c("ATTCATATCCGGGATGTTACTTG", "ATTCATATAATGGCACTACTTG"),
                  subject = "ATTTTAATCCGGGATGTTACTTG",
                  substitutionMatrix = submat,
                  gapOpening = 0,
                  gapExtension = 1)
