# Reading a BAM file
library(Rsamtools)

bam_file <- BamFile("sample.bam")

# Get the number of reads in the file
nreads <- countBam(bam_file) # Count the number of reads
alignments <- scanBam(bam_file) # Scan for alignments