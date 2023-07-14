# Read a FASTA file ####

# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")

# BiocManager::install("Biostrings")

library("Biostrings")

sequences <- readDNAStringSet("ls_orchid.fasta")
sequences

# Access sequence information ####
seqlengths(sequences)  # Get sequence lengths

# Extracting a specific sequence
sequences <- as.data.frame(sequences)
names <- row.names(sequences)
names

# Writing a FASTA file
output_file <- "output.fasta"
write.fasta(sequences = sequence, names = names[1], nbchar = 80, file.out = output_file)
