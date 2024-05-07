#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J Ricci_fastQ_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_fastQ_RNA.out


module load bioinfo-tools
module load FastQC/0.11.9
fastqc /proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516462_1.fastq.gz \
/proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516462_2.fastq.gz \
/proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516463_1.fastq.gz \
/proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516463_2.fastq.gz \
/proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516464_1.fastq.gz \
/proj/uppmax2024-2-7/Genome_Analysis/2_Beganovic_2023/RNA_reads/SRR24516464_2.fastq.gz \
-o /home/ricci/Genome_analysis/intermediate_short_RNA
