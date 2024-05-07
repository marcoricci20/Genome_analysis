#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J Ricci_Pilon_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user marco.ricci.evobio@gmail.com
#SBATCH --output=Ricci_Pilon1.out



module load bioinfo-tools Pilon/1.24

java -jar $PILON_HOME/pilon.jar --genome assembly.fasta --frags /home/ricci/Genome_analysis/bwa_DNA/sorted_reads.bam --output polished_assembly --changes
