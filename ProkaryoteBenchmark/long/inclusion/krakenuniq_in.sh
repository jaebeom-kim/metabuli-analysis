#!/bin/bash

# ~/krakenuniq/krakenuniq --db /fast/jaebeom/gtdb-inclusion-db/databases/krakenuniq \
# 	--report-file /fast/jaebeom/long-read/results/krakenuniq/ont_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq \
# 	> /fast/jaebeom/long-read/results/krakenuniq/ont_classifications.tsv

# ~/krakenuniq/krakenuniq --db /fast/jaebeom/gtdb-inclusion-db/databases/krakenuniq \
# 	--report-file /fast/jaebeom/long-read/results/krakenuniq/sequel_report.tsv \
# 	--threads 32 \
# 	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq \
# 	> /fast/jaebeom/long-read/results/krakenuniq/sequel_classifications.tsv

~/krakenuniq/krakenuniq --db /fast/jaebeom/gtdb-inclusion-db/databases/krakenuniq \
	--report-file /fast/jaebeom/long-read/results/krakenuniq/sequel_ccs_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	> /fast/jaebeom/long-read/results/krakenuniq/sequel_ccs_classifications.tsv


