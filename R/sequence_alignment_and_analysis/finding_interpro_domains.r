# Load packages ####

library(biomaRt)
library(ensembldb)
library(EnsDb.Rnorvegicus.v79)
hasProteinData(EnsDb.Rnorvegicus.v79) # Checking whether 'ensembldb' carries the 'EnsDb.Rnorvegicus.v79' data

# Approach for Ensemble databases ####

## Build a list of query genes ####
e <- EnsDb.Rnorvegicus.v79
k <- head(keys(e,
               keytype = 'GENEID'),
               n = 3)
k

## Pull relevant data ####
info <- select(e,
               keys = GeneIdFilter(k),
               columns = c("TXBIOTYPE", "UNIPROTID",
                           "PROTEINID","INTERPROACCESSION"))
View(info)

# Approach for non-Ensemble databases ####

## Define connection berween host and dataset ####
biomart_athal <- useMart(biomart = "plants_mart", host =
                           "https://plants.ensembl.org", dataset = "athaliana_eg_gene")
biomart_athal

## Query dataset in the host ####
result <- getBM( c("tair_locus", "interpro"), filters=c("tair_locus"), values =
         c("AT5G40950", "AT2G40510"), mart = biomart_athal)
result
