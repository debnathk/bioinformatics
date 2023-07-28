# Retrieving gene and genome annotation form BioMart

# Load packages ####
library(biomaRt)

# List marts in the selected example database - gramene:
listMarts(host = "https://ensembl.gramene.org")

# Create a connection to the selected mart:
gramene_connection <- useMart(biomart = "ENSEMBL_MART_PLANT", 
        host = "https://ensembl.gramene.org")
gramene_connection

# List datasets in the mart:
data_sets <- listDatasets(gramene_connection)
data_sets

data_set_connection <- useMart("atrichopoda_eg_gene",
                               biomart = "ENSEMBL_MART_PLANT", 
                               host = "https://ensembl.gramene.org")
data_set_connection

# List the datatypes to retrieve ####
attributes <- listAttributes(data_set_connection)
head(attributes)

# Get a vector of all chromosome names ####
chrom_names <- getBM(attributes = c("chromosome_name"),
      mart = data_set_connection)
head(chrom_names)

# Create filters to query data ####
filters <- listFilters(data_set_connection)
head(filters)

# Get gene IDs on the first chromosome ####
first_chr <- chrom_names$chromosome_name[1]
genes <- getBM(attributes = c("ensembl_gene_id", "description"),
               filters = c("chromosome_name"), values = c(first_chr),
               mart = data_set_connection)
head(genes)
