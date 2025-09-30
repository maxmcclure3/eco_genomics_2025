---
editor_options: 
  markdown: 
    wrap: 72
---

# Population Genomics Notebook

## Fall 2025 Eco genomics

## Max McClure

### 20250911: cleaning fastq reads of red spruce

utilized fastp.sh (w/in
`~/projects/eco_genomics_2025/population_genomics/myscripts)`. used this
to trim adapters from red spruce seq. files raw data (fastq) located in
class share space:
`/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/fastq/red_spruce`

using program fastp: processed raw reads to clean. Output clean reads
to: `/gpfs1/cl/ecogen/pbio6800/PopulationGenomics/cleanreads`

fastp -\> reports for each sample. saved into the directory.
`~/projects/eco_genomics_2025/population_genomics/myresults/fastp_reports`

results: high quality seq. Q-scores \>\> 20. low amount of
contamination. leading 12 bp trimmed out (rid of index)

cleaned reads ready to proceed to next step in pipeline: mapping to
reference genome

### 20250916: mapping red spruce clean reads to the reference genome

used mapping.sh loacted in:
`~/projects/eco_genomics_2025/population_genomics/myscripts` output:
.sam files.

edited `process_bam.sh` and `bam_stats.sh` (located in above directory)
to match my population code etc. wrapped both scripts into
`process_stats_wrapper.sh`, located in my scripts will run wrapper once
mapping job is done

### 20250918: review bam_stats and set up nucleotide diversity esitimation using ANGSD!

brought `2032.stats.txt` into R and visualized the data:
`bamstats_review.r` (in my scripts within population_genomics) roughly
66% reads mapped in proper pairs, suggests depth of coverage between 2-3

Ran ANGSD: using `ANGSD.sh` and `ANGSD_doTheta.sh` in
`population/genomics/myscripts` wrapped them together in
`diversity_wrapper.sh`

Ran the code and let it run over the weekend.

### 20250918: Review ANGSD, nucleotide diversity.

brought files outputted from ANGSD (in
`myresults/ANGSD/diversity, \*.thetas`)

`mydocs/nucleotide_diversity.Rmd` was where I cleaned and visualized the
data.

normalized theta w and theta pi by number of sites analyzed. Histogram
of number of sites in read visualized theta w and theta pi across the
entire genome compared theta w and theta pi to see Tajimas D, showed a
slight positive skew. calculated effective population size using theta
w/ theta pi/ mu/ generation time/ and C = 4. Values are denoted in file.
calculated smallest and largest Tajimas D.

### 20250925: Comparing my red spruce population with black spruce outgroup.

-   calculated Fst between my population and black spruce (0.309295)
    -   using `ANGSD_Fst.sh` in my scripts
    -   put in the shared spreadsheet for ecogen
-   Calculated PCA and ADMIXTURE via PCAngsd.
    -   using `PCAngsd_RSBS.sh` in my scripts
    -   visualized in `PCA_Admix.Rmd` in my docs

### 20250930:

-   calculating PCA with various eigenvalues
-   viewed PCA with PC3 compared to PC1 and 2 of the red spruce PCA
    - `PCA_Admix.Rmd`
-   calculated PCA on red spruce without black spruce
    - set it to analyze for selection using Fst
    - `PCAngsd_allRS_selection.sh` and `RedSpruce_Selection.Rmd` for analysis
    






