#!/bin/bash

# DNA: Kraken2
# AA: Kraken2X

# Kraken2 for all
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 \
	--report /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2_ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	--minimum-hit-groups 3 \
	--unclassified-out /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2_ont_unclassified.fq \
	> /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2_ont_classifications.tsv

# Kraken2x for unclassified 
~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2x \
	--report /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2x_ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/results/ensemble/kraken2_ont_unclassified.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2x_ont_classifications.tsv

awk -F 	'\t' '{if($1 == "C") print $0}' /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2_ont_classifications.tsv \
	> /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2+kraken2x_ont_classifications.tsv

cat /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2x_ont_classifications.tsv \
	>> /fast/jaebeom/long-read/exclusion/results/ensemble/kraken2+kraken2x_ont_classifications.tsv
