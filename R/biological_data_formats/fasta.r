# Read a FASTA file ####

# if (!require("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")

# BiocManager::install("Biostrings")

library("Biostrings")
library("seqinr")
library("dplyr")
library("stringdist")

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
write.fasta(sequences = sequences[1, ], names = names[1], nbchar = 80, file.out = output_file)

# Problems
# Question 1:
#   Write an R function to calculate the GC content of each sequence in a FASTA file.
# Solution:

gc_contents <- function(file_path){
  fasta_file <- readDNAStringSet(file_path)
  gc_content <- vector("numeric", length(fasta_file))
  for(i in 1:length(fasta_file)){
    seq <- fasta_file[[i]]
    char_seq <- paste(seq, collapse = "")
    gc <- c("G", "C")
    chars <- strsplit(char_seq, "")[[1]]
    count <- table(chars)
    freq <- count[gc]
    gc_content[[i]] <- sum(freq)/nchar(seq)
  }
  print(gc_content)
}

# Usage example:
fasta_file <- "ls_orchid.fasta"
gc_contents <- gc_contents(fasta_file)

# Question 2:
#   Write an R function to calculate the pairwise sequence similarity (percent identity)
# between all sequences in a FASTA file.
# Solution:

pairwise_similarity <- function(file_path){
fasta_file <- readDNAStringSet(file_path)
num_sequences <- length(fasta_file)
count_matrix <- matrix(0, nrow = num_sequences, ncol = num_sequences)
  for (i in 1:num_sequences) {
    for (j in 1:num_sequences) {
      seq1 <- fasta_file[[i]]
      seq1 <- paste(seq1, collapse = "")
      seq2 <- fasta_file[[j]]
      seq2 <- paste(seq2, collapse = "")
      match_count <- pairwiseAlignment(pattern=seq2, subject=seq1)
      match_count <- match_count@score[[1]]
      count <- match_count/max(nchar(seq1), nchar(seq2))
      count_matrix[i, j] <- count
    }
  }
}
# Usage example:
fasta_file <- "ls_orchid.fasta"
similarity_matrix <- pairwise_similarity(fasta_file)

# Question 3:
#   Write an R function to translate DNA sequences to amino acid sequences (protein sequences) in a FASTA file.
# Solution:

# Usage example:
fasta_file <- "path/to/your/fasta/file.fasta"
translated_sequences <- translate_sequences(fasta_file)