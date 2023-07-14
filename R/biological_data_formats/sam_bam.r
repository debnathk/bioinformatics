# Reading a BAM file
library(Rsamtools)

bam_file <- BamFile("sample.bam")

# Get the number of reads in the file
nreads <- countBam(bam_file)
alignments <- scanBam(bam_file)