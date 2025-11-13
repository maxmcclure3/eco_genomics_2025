# Final Project Notes
## Ecological Genomics 2025

### Nov 6th
  - Lauren, Nicole and I are doing an initial presentation on our project idea
  - Looking at the red spruce exome capture data by different climatic variables
  - We will also be utilizing transcriptomic data created by the Keller lab on Red Spruce plants grown in the growth chambers in Jeffords
    - These plants were taken from cool/wet or hot/dry climates and were subjected to heat, drought or control conditions.
  - My portion of the project involves running gene ontology with the transcriptomic data and cross referencing this to the genomic data to see where in the genome functional enrichment occurs, and if this overlaps with the genomic GO
  
  
### Nov 11th open lab
  - I am looking to start cleaning the raw reads from the spruce transcriptome study
  - the sequencing was polyA tail reads, which reads 86bp from the polyA tail
  - I chose to begin from the raw reads instead of the cleaned reads
  - At the moment, I am unsure as to which cleaning program I will use
  - I will have to clean the reads: trim polyA tails, remove adapter sequences
    - I am not sure how the different treatments and populations are organized and tagged. Were they pooled and sequenced all together or done individually? This will change the way that I attempt to clean them


### Nov 13th open lab
  - I finished figureing out the bbduk input and got it to run fully
    - script is "myscripts/bbduk_spruce.sh"
    - output in "/gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/cleanreads"
  - planning on getting salmon to work next class. Mapping to reference genome
    - I will need an indexing file (??), will have to ask about this.
  - otherwise, mapping will be fairly simple and similar to what we did in class. 
  
  
  
  