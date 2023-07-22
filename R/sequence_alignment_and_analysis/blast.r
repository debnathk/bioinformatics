# Goals - 
#   1. Implementing BLAST queries using rBLAST package
#   2. Build a small reference database of the V. cholerae genome
#   3. Search for BLAST hits matching to ctxAB gene (produces cholera toxin) region
#   4. Illustrate a generalized BLAST workflow

## Load libraries ####
# install.packages('rBLAST', repos = 'https://mhahsler.r-universe.dev')
library(rBLAST)
library(Biostrings)
library(GEOquery)
library(ggplot2)

## Download chromosome file for V. cholerae (reference file) ####
download.file('ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/Vibrio_cholerae/representative/GCF_008369605.1_ASM836960v1/GCF_008369605.1_ASM836960v1_genomic.fna.gz',
              'cholera.fna.gz')
gunzip('cholera.fna.gz')
genome = readDNAStringSet('cholera.fna')

## Download ctxAB genome file (query file) ####
download.file('https://raw.githubusercontent.com/developing-bioinformatics/bioinformatics/master/data/ctxAB.fasta',
              'ctxAB.fasta')
query = readDNAStringSet('ctxAB.fasta')

# Note: Filter out ambiguous base calls

## Set up BLAST ####
reference = 'cholera.fna'
makeblastdb(reference, dbtype = "nucl")

## Run BLAST ####
bl <- blast(db = reference, type = "blastn")
cl <- predict(bl, query)

## Visualize output ####
ggplot(cl) +
  geom_density(aes(x=S.start), kernel='rectangular', n=3000) +
  xlim(0, 2936971) + 
  theme_linedraw()
