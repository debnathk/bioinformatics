# Load pacakges ####

library(DECIPHER)

# Download genome file ####

download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch3/plastid_genomes.fa',
               'plastid_genomes.fa')
long_seqs <- readDNAStringSet('plastid_genomes.fa')
long_seqs

# Prepare the sequences in a local database ####
Seqs2DB(long_seqs, "XStringSet", "long_db", names(long_seqs))

# Find the blocks of synteny ####
synteny <- FindSynteny("long_db")
pairs(synteny) # Dot plot of syntenic blocks

# Plot the syntenic blocks ####
plot(synteny)

# Making actual alignments ####
alignment <- AlignSynteny(synteny, "long_db")

# Saving the pairwise alignments iteratively ####
blocks <- unlist(alignment[[1]])
writeXStringSet(blocks, "genome_blocks_out.fa")
