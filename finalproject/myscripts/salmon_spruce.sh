#!/bin/sh
#SBATCH --partition=general
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=1:00:00 
#SBATCH --job-name=Salmon_mapping_spruce
#SBATCH --output=/users/m/r/mrmcclur/projects/eco_genomics_2025/finalproject/mylogs/%x_%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mrmcclur@uvm.edu

module purge

module load gcc/13.3.0-xp3epyt salmon/1.10.2-uhrt76c

salmon --version