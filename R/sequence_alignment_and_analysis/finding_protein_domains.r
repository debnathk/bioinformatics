# Load packages ####

library(devtools)
library(org.Hs.eg.db)
library(org.EcK12.eg.db)
library(org.At.tair.db)

# Create a vector of keys (e.g., EMSEMBL) ####
k <- head(keys(org.Hs.eg.db, keytype = "ENSEMBL"), n = 3)
k

# Query the database ####
result <- select(org.Hs.eg.db, keys = k, keytype = "ENSEMBL", columns = c("PFAM"))
result

# Load PFAM database to extract descriptions ####
library(PFAM.db)
descriptions <- PFAMDE
descriptions

# Get all keys from the PFAM database ####
all_ids <- mappedkeys(descriptions)
all_ids

# Get all descriptions for the PFAM IDs ####
id_description_mapping <- as.data.frame(descriptions[all_ids])
id_description_mapping

# Join the descriptions to PFAM ####
dplyr::left_join(result, id_description_mapping, by = c("PFAM" = "ac"))
