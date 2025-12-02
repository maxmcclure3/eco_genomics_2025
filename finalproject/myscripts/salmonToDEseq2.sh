#!/bin/sh

module purge 


cd /gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/mapped_reads

echo "sample,path" > /gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/mapped_reads/samples.csv
for dir in */; do
  raw_name=${dir%/}
  sample_name=${raw_name%_R1.fastq.gz.clean.fq}
  echo "${sample_name},/gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/mapped_reads/${sample_name}" >> /gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/mapped_reads/samples.csv
done