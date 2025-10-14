# Load libraries

library(tximport)
library(readr)

# Path to sample table
samples <- read.csv("~/projects/eco_genomics_2025/transcriptomics/myresults/samples.csv")

# Make a named vector of quant.sf file paths
files <- file.path(samples$path, "quant.sf")
names(files) <- samples$sample

# Import Salmon quantifications
txi <- tximport(files, type = "salmon", txOut = TRUE)

# Write counts to txt
write.csv(txi$counts, "~/projects/eco_genomics_2025/transcriptomics/mydata/counts_table.csv")
