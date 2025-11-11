#!/bin/bash

bbduk="/gpfs1/cl/ecogen/pbio6800/GroupProjects/programs/bbmap/bbduk.sh"
cd "/gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/fastq_run1"
RAWDATA="/gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/fastq_run1"
OUTPUT="/gpfs1/cl/ecogen/pbio6800/GroupProjects/picea_rnaseq/cleanreads"

for READ in ${RAWDATA}
do

$bbduk.sh in=${input}/${READ} out=${OUTPUT}/${READ}.clean.fq \
ref=adpaters \
ktrim=r \
k=23 \
mink=11 \
hdist=1 tpe tbo \
trimpolya = 10

done