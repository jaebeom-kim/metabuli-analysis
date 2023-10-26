#!/bin/bash

# ~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/krakenuniq \
# 	--report-file /fast/jaebeom/long-read/exclusion/results/krakenuniq/ont_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
# 	> /fast/jaebeom/long-read/exclusion/results/krakenuniq/ont_classifications.tsv

# ~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/krakenuniq \
# 	--report-file /fast/jaebeom/long-read/exclusion/results/krakenuniq/sequel_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
# 	> /fast/jaebeom/long-read/exclusion/results/krakenuniq/sequel_classifications.tsv

~/krakenuniq/krakenuniq --db /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/krakenuniq \
	--report-file /fast/jaebeom/long-read/exclusion/results/krakenuniq/sequel_ccs_report.tsv \
	--threads 16 \
	/fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	> /fast/jaebeom/long-read/exclusion/results/krakenuniq/sequel_ccs_classifications.tsv
