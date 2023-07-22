# BiocManager::install('msa')
library(msa)
library(Biostrings)

# Load file
mySequencesFile <- system.file("examples", "exampleAA.fasta", package = "msa")
mySequences <- readAAStringSet(mySequencesFile)
mySequences

# MSA - ClustalW ####
myClustalWAlignment <- msa(mySequences, "ClustalW")
myClustalWAlignment

# MSA - ClustalOmega ####
myClustalOmegaAlignment <- msa(mySequences, "ClustalOmega")
myClustalOmegaAlignment

# MSA - MUSCLE ####
myMuscleAlignment <- msa(mySequences, "Muscle")
myMuscleAlignment

# Alignment visualization ####

