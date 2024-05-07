#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Ricci_Quast_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_Quast1.out

#module load bioinfo-tools quast.py

module load bioinfo-tools
module load quast/5.0.2

quast.py -r /home/ricci/Genome_analysis/2_Beganovic_2023/reference_genome/R7_genome.fasta -o /home/ricci/Genome_analysis/final_genome/Quast_1 --features /home/ricci/Genome_analysis/final_genome/Prokka/HP126/HP126.gff /home/ricci/Genome_analysis/final_genome/polished_assembly.fasta
