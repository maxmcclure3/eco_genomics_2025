# Population Genomics notebook

## Fall 2025 Eco genomics

## Author: Max McClure

This will keep my notes on population genomics coding sessions

### 20250911: cleaning fastq reads of red spruce

utilized fastp.sh (w/in `~/projects/eco_genomics_2025/population_genomics/myscripts)`. used this to trim adapters from red spruce seq. files raw data (fastq) located in class share space: `/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/fastq/red_spruce`

using program fastp: processed raw reads to clean. Output clean reads to: `/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/cleanreads`

fastp -\> reports for each sample. saved into the directory. `~/projects/eco_genomics_2025/population_genomics/myresults/fastp_reports`

results: high quality seq. Q-scores >> 20. low amount of contamination. leading 12 bp trimmed out (rid of index)

cleaned reads ready to proceed to next step in pipeline: mapping to reference genome

###20250916: mapping red spruce clean reads to the reference genome 

