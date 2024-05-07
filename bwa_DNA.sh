#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Ricci_BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_BWA_DNA.out

module load bioinfo-tools bwa/0.7.17 samtools/1.19

#index the long read assembly
bwa index assembly.fasta

#map short reads to the assembly
bwa mem assembly.fasta SRR24413065_trim_FP.fastq SRR24413065_trim_FP.fastq > mapped_reads.sam

# convert SAM files to BAM files

samtools view -bS mapped_reads.sam > mapped_reads.bam

# sort and index the mapped_reads.bam

samtools sort mapped_reads.bam -o sorted_reads.bam
samtools index sorted_reads.bam
