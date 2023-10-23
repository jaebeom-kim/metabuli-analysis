#!/bin/bash

# DNA: KrakenUniq
# AA: Kraken2X

# KrakenUniq for all
~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/krakenuniq \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_report.tsv \
	--threads 32 \
	--paired \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_1.fna \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/query_reads/prokaryote_ss_exclusion_reads_2.fna \
	--unclassified-out /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified#.fna \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_classifications.tsv


# KrakeunUniq generates unclassified reads merged by 'N', so we need to split them into two files
awk -F 'N' '{if (NR%2 == 1) {print $0"/1"} else {print $1} }' \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified#.fna \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified_1.fna

awk -F 'N' '{if (NR%2 == 1) {print $0"/2"} else {print $2} }' \
	/mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified#.fna \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified_2.fna


# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/db/kraken2x \
	--report /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_short_report.tsv \
	--threads 32 \
        --paired \
        /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified_1.fna \
        /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_unclassified_2.fna \
	--minimum-hit-groups 3 \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_short_classifications.tsv \


awk -F 	'\t' '{if($1 == "C") print $0}' /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq_short_classifications.tsv \
	> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_short_classifications.tsv


cat /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/kraken2x_short_classifications.tsv \
	>> /mnt/scratch/jaebeom/gtdb_202_ss_exclusion/results/ensemble/krakenuniq+kraken2x_short_classifications.tsv
