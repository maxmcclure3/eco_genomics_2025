## Transcriptomics module

## 20251007: first day of transcriptomics.

learned about motivation for doing transcriptomics, methods, analyses, considerations, etc \### 20251009: cleaning reads from C3R tonsa RNA seq data running fastp to clean and visualize the data quality in out fastq files. "transcriptomics/myscripts/fastp_tonsa_take2.sh" used for this

### 20251009: fastp on C3R group from tonsa RNA seq

ran fastp on fastq files from my treatment group used "transcriptomics/myscripts/fastp_tonsa_take2.sh" to run
mapped reads to reference tonsa transcriptome using salmon
this created a counts matrix for all of the reads

### 20251014

reviewed mapping statistics (rates)
 - all of the mapping rates were very low (40%)
 - discussed factors that could lead to this low mapping rates
  - could be: contamination (from other taxa: bacteria/algae), or an incorrect clade that it was mapped to
  - could be low quality RNA or low RNA yield
  - could try a de novo transcriptome assembly
prepped quant.sf file for input into DEseq2

``` {r}
cd /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant

echo "sample,path" > /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/samples.csv
for dir in */; do
  sample_name=${dir%/}
  echo "${sample_name},/gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/${sample_name}" >> /gpfs1/cl/ecogen/pbio6800/Transcriptomics/transcripts_quant/samples.csv
done
```

saved a mapping table file in my data.
 - used "~/projects/eco_genomics_2025/transcriptomics/myscripts/create_counts_matrix.R""
 - output to "~/projects/eco_genomics_2025/transcriptomics/mydata/counts_table.csv"
 
DEseq2 start of data analysis
- "~/projects/eco_genomics_2025/transcriptomics/mydocs/Deseq2_tonsa_multigen.Rmd"


 
 
 
 
 