# Load libraries
library(tximport)
library(readr)

# Path to sample table
samples <- read.csv("/gpfs1/home/m/r/mrmcclur/projects/eco_genomics_2025/finalproject/myresults/samples.csv")

# Make a named vector of quant.sf file paths
files <- file.path(paste0(samples$path, "_R1.fastq.gz.clean.fq"), "quant.sf")
names(files) <- samples$sample

# Import Salmon quantifications
txi <- tximport(files, type = "salmon", txOut = TRUE)

# Write counts to txt
write.csv(txi$counts, "/gpfs1/home/m/r/mrmcclur/projects/eco_genomics_2025/finalproject/mydata/counts_matrix.csv")