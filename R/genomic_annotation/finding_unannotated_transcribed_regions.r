# Finding unannotated transcribed regions

# Load packages ####
library(csaw)
library(IRanges)
library(SummarizedExperiment)
library(rtracklayer)

# Download data ####
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch1/windows.bam',
              'windows.bam')
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch1/genes.gff',
              'genes.gff')

# Set up a loading function ####
get_annotated_regions_from_gff <- function(file_name){
  gff <- rtracklayer::import.gff(file_name)
  as(gff, "GRanges")
}

# Get counts in windows acroos the whole genome ####
whole_genome <- csaw::windowCounts(
  file.path("windows.bam"),
  bin = TRUE, 
  filter = 0,
  width = 500, 
  param = csaw::readParam(
    minq = 20,
    dedup = TRUE,
    pe = "both"
  )
  
)
colnames(whole_genome) <- c("small_data")
annotated_regions <- get_annotated_regions_from_gff("genes.gff")

# Find overlaps between annotations and our windows, and subset the windows ####
windows_in_genes <- IRanges::overlapsAny(
  SummarizedExperiment::rowRanges(whole_genome), annotated_regions
)

# Subset the windows into those in annotated and non-annotated regions ####
annotated_window_counts <- whole_genome[windows_in_genes]
non_annotated_window_counts <- whole_genome[!windows_in_genes, ]

# Get the data out to a count matrix ####
assay(non_annotated_window_counts)