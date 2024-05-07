#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Ricci_Flye1
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_Flye1.out


module load bioinfo-tools Flye

flye  --nano-raw /proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/DNA_reads/SRR24413072.fastq.gz --out-dir /home/ricci/Genome_analysis/intermediate_long/
