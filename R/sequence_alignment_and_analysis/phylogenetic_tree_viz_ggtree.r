# Load packages ####
library(ggplot2)
library(ggtree)
library(ape)

# Download data ####
download.file('https://raw.githubusercontent.com/PacktPublishing/R-Bioinformatics-Cookbook/master/datasets/ch4/itol.nwk',
              'itol.nwk')

# Read data ####
itol <- ape::read.tree("itol.nwk")

# Make tree plot ####
ggtree(itol)

# Convert the plot to circular ####
ggtree(itol, layout = "circular")

# Rotate and invert the tree ####
ggtree(itol) + coord_flip() + scale_x_reverse()
