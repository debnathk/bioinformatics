## Load packages ####

# BiocManager::install("universalmotif")
library(Biostrings)
library(universalmotif)

# Download motif file ####
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch3/simple_motif.txt',
              'simple_motif.txt')

# Read motif file ####
motif <- read_matrix('simple_motif.txt')
motif

# Download promoters file ####
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch3/promoters.fa',
              'promoters.fa')

# Read promoters file ####
sequences <- readDNAStringSet('promoters.fa')
sequences

# Perform sequence scanning (finding the position of the motif in each sequence) ####
motif_hits <- scan_sequences(motif, sequences = sequences)
motif_hits

# Perform sequence enrichment (checking whether the motif is statistically significant) ####
motif_info <- enrich_motifs(motif,
                            sequences, 
                            shuffle.k = 3, 
                            verbose = 0,
                            RC = TRUE)
View(as.data.frame(motif_info))

# Run MEME to find novel motifs ####
# Unfortunately, MEME does not run on a Windows system
# Nevertheless, the code is mentioned below:
# meme_path = "/Users/macleand/miniconda2/bin/meme"
# meme_run <- run_meme(sequences, bin = meme_path, output =
#                        "meme_out", overwrite.dir = TRUE)
# motifs <- read_meme("meme_out/meme.txt")
# view_motifs(motifs)
