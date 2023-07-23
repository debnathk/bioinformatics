# Load packages ####

library(bio3d)

# Download files ####
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch3/1xwc.pdb',
              '1xwc.pdb')
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch3/3trx.pdb',
              '3trx.pdb')

# Read files ####
a <- read.pdb('1xwc.pdb')
b <- read.pdb('3trx.pdb')

# Alignment of the proteins ####
pdbs <- pdbaln(list("1xwc"=a, "3trx"=b), fit = TRUE, exefile = "msa")

# Launch and render alignment in PyMOL
pymol_path = 'C:\\Drive_D_Sectum Sempra\\Apps\\PyMOL'
pymol(pdbs, as="cartoon")
