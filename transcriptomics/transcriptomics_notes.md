---
editor_options: 
  markdown: 
    wrap: 72
---

## Transcriptomics module

## 20251007: first day of transcriptomics.

learned about motivation for doing transcriptomics, methods, analyses,
considerations, etc \### 20251009: cleaning reads from C3R tonsa RNA seq
data running fastp to clean and visualize the data quality in out fastq
files. "transcriptomics/myscripts/fastp_tonsa_take2.sh" used for this

### 20251009: fastp on C3R group from tonsa RNA seq

ran fastp on fastq files from my treatment group used
"transcriptomics/myscripts/fastp_tonsa_take2.sh" to run mapped reads to
reference tonsa transcriptome using salmon this created a counts matrix
for all of the reads

### 20251014

reviewed mapping statistics (rates) - all of the mapping rates were very
low (40%) - discussed factors that could lead to this low mapping
rates - could be: contamination (from other taxa: bacteria/algae), or an
incorrect clade that it was mapped to - could be low quality RNA or low
RNA yield - could try a de novo transcriptome assembly prepped quant.sf
file for input into DEseq2

```{r}
cd /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant

echo "sample,path" > /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/samples.csv
for dir in */; do
  sample_name=${dir%/}
  echo "${sample_name},/gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/${sample_name}" >> /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/samples.csv
done
```

saved a mapping table file in my data. - used
"\~/projects/eco_genomics_2025/transcriptomics/myscripts/create_counts_matrix.R"" -
output to
"\~/projects/eco_genomics_2025/transcriptomics/mydata/counts_table.csv"

DEseq2 start of data analysis -
"\~/projects/eco_genomics_2025/transcriptomics/mydocs/Deseq2_tonsa_multigen.Rmd"

### 20251021: continuing to plot data from DEseq2

-   ""\~/projects/eco_genomics_2025/transcriptomics/mydocs/Deseq2_tonsa_multigen.Rmd"
-   plotted individual differentially expressed genes
    -   using plotCounts function
-   plotted MA and volcano plots
-   plotted heat map for the top 20 differentially expressed genes
-   heat map to compare LFC between generations
-   created a Euler plot for generations 1-3 -manually did calculations
    in Rmd file
    
### 20251023: running gene ontology

- using TopGO to generate a gene ontology on our DEseq2 data
- created a new Rmd file ("transcriptomics/mydata/DEseqtoTopGO.Rmd") 
- reran DEseq2 in this file, seperated by generation and sorted by pvalue
- plotted adjusted pvalue distriubution, -log10(padj), and wald stat of our DEseq2 analysis
  - plotted -log10(padj) on a density plot
- Ran TopGo using the GO.db and topGO libraries 
  - ran generatiuon 2 at first, because we know there is a lot of differntial expression 
  - plotted and knitted into .html file in my docs
    - "DEseq2toTopGO.html"
