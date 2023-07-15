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
#   Write an R function to translate DNA sequences to amino acid sequences (protein sequences)
# in a FASTA file.
# Solution:

dna_to_protein <- function(char_dna_sequence) {
  codon_table <- list(
    TTT = "F", TTC = "F", TTA = "L", TTG = "L",
    TCT = "S", TCC = "S", TCA = "S", TCG = "S",
    TAT = "Y", TAC = "Y", TAA = "*", TAG = "*",
    TGT = "C", TGC = "C", TGA = "*", TGG = "W",
    CTT = "L", CTC = "L", CTA = "L", CTG = "L",
    CCT = "P", CCC = "P", CCA = "P", CCG = "P",
    CAT = "H", CAC = "H", CAA = "Q", CAG = "Q",
    CGT = "R", CGC = "R", CGA = "R", CGG = "R",
    ATT = "I", ATC = "I", ATA = "I", ATG = "M",
    ACT = "T", ACC = "T", ACA = "T", ACG = "T",
    AAT = "N", AAC = "N", AAA = "K", AAG = "K",
    AGT = "S", AGC = "S", AGA = "R", AGG = "R",
    GTT = "V", GTC = "V", GTA = "V", GTG = "V",
    GCT = "A", GCC = "A", GCA = "A", GCG = "A",
    GAT = "D", GAC = "D", GAA = "E", GAG = "E",
    GGT = "G", GGC = "G", GGA = "G", GGG = "G"
  )
  
  codons <- strsplit(char_dna_sequence, "(?<=\\G...)", perl = TRUE)[[1]]
  protein_sequence <- sapply(codons, function(codon) {
    if (codon %in% names(codon_table)) {
      codon_table[[codon]]
    } else {
      "?"
    }
  })
  
  return(paste(protein_sequence, collapse = ""))
}

translate_sequences <- function(file_path) {
  sequences <- readDNAStringSet(file_path)
  translated_sequences <- list()
  
  for (seq_id in names(sequences)) {
    dna_sequence <- sequences[[seq_id]]
    char_dna_sequence <- paste(dna_sequence, collapse = "")
    protein_sequence <- dna_to_protein(char_dna_sequence)
    translated_sequences[[seq_id]] <- protein_sequence
  }
  
  return(translated_sequences)
}

# Usage example:
fasta_file <- "ls_orchid.fasta"
translated_sequences <- translate_sequences(fasta_file)
