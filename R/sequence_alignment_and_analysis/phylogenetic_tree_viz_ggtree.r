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

# Add labels to the tips ####
ggtree(itol) + geom_tiplab(color = "blue", size = 2)

# Make a color strip to annotate a particular clade ####
ggtree(itol, layout = "circular") + geom_strip(13, 14, color = "red", barsize = 1)

# Make a blob of color to highlight a particular clade ####
## tidytree==0.4.2 is necessary in this step
require(devtools)
install_version("tidytree", version = "0.4.2", repos = "http://cran.us.r-project.org")
ggtree(itol, layout = "unrooted") + geom_hilight(node = 11, type = "encircle", fill = "steelblue")
