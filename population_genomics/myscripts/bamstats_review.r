# Reviewing Bam Stats

getwd()
#setwd("~/population_genomics/myresults/")

stats <- read.table("2032.stats.txt", header = TRUE, sep = "")

View(stats)

stats$pctParied = stats$Num_Paired/stats$Num_reads

