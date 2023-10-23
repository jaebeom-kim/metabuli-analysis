#!/bin/bash

# DNA: krakenuniq
# AA: kraken2x

~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/krakenuniq --paired \
         --report /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_report.tsv \
         --threads 32 \
         /mnt/scratch/jaebeom/gtdb_202_inclusion/query/prokaryote_inclusion_reads_1.fna.gz \
         /mnt/scratch/jaebeom/gtdb_202_inclusion/query/prokaryote_inclusion_reads_2.fna.gz \
         --unclassified-out /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified.fna \
         > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_total_classifications.tsv

# KrakeunUniq generates unclassified reads merged by 'N', so we need to split them into two files
awk -F 'N' '{if (NR%2 == 1) {print $0"/1"} else {print $1} }' \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified.fna \
	> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified_1.fna

awk -F 'N' '{if (NR%2 == 1) {print $0"/2"} else {print $2} }' \
	/mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified.fna \
	> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified_2.fna

# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2x_short_report.tsv \
	--threads 32 \
        --paired \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified_1.fna \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_unclassified_2.fna \
        --minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2x_short_classifications.tsv \


awk -F 	'\t' '{if($1 == "C") print $0}' \
        /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq_short_total_classifications.tsv \
        > /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq+kraken2x_short_classifications.tsv


cat /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/kraken2x_short_classifications.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_inclusion/results/ensemble/krakenuniq+kraken2x_short_classifications.tsv


