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

used mapping.sh loacted in: `~/projects/eco_genomics_2025/population_genomics/myscripts`
output: .sam files.

edited process_bam.sh and bam_stats.sh (located in above directory) to match my population code etc. 
wrapped both scripts into process_stats_wrapper.sh, located in my scripts
will run wrapper once mapping job is done

###20250918: review bam_stats and set up nucleotide diversity esitimation using ANGSD! 

brought 2032.stats.txt into R and visualized the data: bamstats_review.r (in my scripts within population_genomics)
roughly 66% reads mapped in proper pairs, suggests depth of coverage between 2-3

Ran ANGSD: using ANGSD.sh and ANGSD_doTheta.sh in population/genomics/myscripts
wrapped them together in diversity_wrapper.sh

Ran the code and let it run over the weekend. 


