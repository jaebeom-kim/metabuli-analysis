#!/bin/bash

# It generates CCS reads from PacBio Sequel reads.
# You should provide a list of FASTA files of genomes from which you want to generate CCS reads.
# You should change the paths in this script to run it.

FASTALIST=$1

# Run PBSIM3
awk -F '/' '{print $0, $7 }' "${FASTALIST}" | while read -r fna assacc; do
	~/pbsim3/src/pbsim --strategy wgs \
		--method errhmm \
		--errhmm ~/pbsim3/data/ERRHMM-SEQUEL.model \
		--depth 1 \
		--pass-num 10 \
		--genome "${fna}" \
		--prefix "/mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/${assacc}" \
		--id-prefix "${assacc}_"
done


# Convert SAM to BAM
for sam in /mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/*.sam; do
	~/bin/samtools-1.18/samtools view --threads 32 -bS "${sam}" > "${sam%.sam}.bam"
done

# Run pbccs
for bam in /mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/*.bam; do
        echo "${bam}"
        ccs --num-threads 32 "${bam}" "${bam%.bam}.fastq.gz"
done

# Unzip FASTQ files
gzip -d /mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/*.fastq.gz

# Concatenate FASTQ files
cat /mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/*.fastq 
	> /mnt/scratch/jaebeom/gtdb_202_inclusion/sequel_ccs/prokaryote_inclusion_sequel_ccs.fastq