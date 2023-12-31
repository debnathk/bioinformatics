# Reading a FASTQ file

library(ShortRead)

fastq <- readFastq("SRR020192.fastq")

# Accessing sequence and quality score information
sequences <- sread(fastq)  # Get sequences
ids <- id(fastq) # Get sequence ids

# Writing a FASTQ file
fastq_i = fastq[1]
output_file <- "output.fastq"
writeFastq(fastq_i, file = output_file)