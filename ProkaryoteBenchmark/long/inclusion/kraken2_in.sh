#!/bin/bash

# # ont
# ~/kraken2/kraken2 --db /fast/jaebeom/gtdb-inclusion-db/databases/kraken2 \
# 	--report /fast/jaebeom/long-read/results/kraken2/ont_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
# 	--minimum-hit-groups 3 \
# 	> /fast/jaebeom/long-read/results/kraken2/ont_classifications.tsv

# # sequel
# ~/kraken2/kraken2 --db /fast/jaebeom/gtdb-inclusion-db/databases/kraken2 \
# 	--report /fast/jaebeom/long-read/results/kraken2/sequel_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
# 	--minimum-hit-groups 3 \
# 	> /fast/jaebeom/long-read/results/kraken2/sequel_classifications.tsv

# sequel ccs
~/kraken2/kraken2 --db /fast/jaebeom/gtdb-inclusion-db/databases/kraken2 \
	--report /fast/jaebeom/long-read/results/kraken2/sequel_ccs_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/results/kraken2/sequel_ccs_classifications.tsv