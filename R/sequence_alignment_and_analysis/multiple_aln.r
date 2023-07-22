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
msaPrettyPrint(myMuscleAlignment,
               output="tex",
               y=c(164,213), 
               subset=c(1:6),showNames="none",
               showLogo="none", 
               consensusColor="ColdHot",
               showLegend=FALSE, 
               shadingMode="similar",
               askForOverwrite=FALSE, 
               furtherCode=c("\\defconsensus{.}{lower}{upper}", "\\showruler{1}{top}"))
