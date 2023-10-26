#!/bin/bash

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2/ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2/ont_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2/sequel_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2/sequel_classifications.tsv

~/kraken2/kraken2 --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/kraken2 \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2/sequel_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2/sequel_ccs_classifications.tsv
