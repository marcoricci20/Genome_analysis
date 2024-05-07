#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J Ricci_Trimmomatic_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_Trimmomatic.out

# Load required modules
module load bioinfo-tools trimmomatic

trimmomatic PE /home/ricci/Genome_analysis/2_Beganovic_2023/DNA_reads/short_reads/SRR24413065_1.fastq.gz \
/home/ricci/Genome_analysis/2_Beganovic_2023/DNA_reads/short_reads/SRR24413065_2.fastq.gz -baseout \
/home/ricci/Genome_analysis/intermediate_short_DNA/trimming/SRR24413065_trim LEADING:10 TRAILING:10 SLIDINGWINDOW:4:15 MINLEN:100
 




