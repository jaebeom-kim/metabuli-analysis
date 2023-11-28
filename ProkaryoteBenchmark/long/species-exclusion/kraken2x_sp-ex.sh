#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2x \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2x/ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2x/ont_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2x \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2x/sequel_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2x/sequel_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2x \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2x/sequel_css_report.tsv \
	--threads 8 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2x/sequel_ccs_classifications.tsv
