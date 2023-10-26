#!/bin/bash

# ont
centrifuge -x centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/exclusion/results/centrifuge/ont_report.tsv \
	-U /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_ont.fq \
	> /fast/jaebeom/long-read/exclusion/results/centrifuge/ont_classifications.tsv

# sequel
centrifuge -x centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/exclusion/results/centrifuge/sequel_report.tsv \
	-U /fast/jaebeom/long-read/exclusion/prokaryote_exclusion_sequel.fq \
	> /fast/jaebeom/long-read/exclusion/results/centrifuge/sequel_classifications.tsv

# sequel ccs
centrifuge -x /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/centrifuge/centri \
	-q --threads 16 -k 1 \
	--report-file /fast/jaebeom/long-read/exclusion/results/centrifuge/sequel_ccs_report.tsv \
	-U /fast/jaebeom/long-read/exclusion/prokaryote_sp_exclusion_sequel_ccs.fastq \
	> /fast/jaebeom/long-read/exclusion/results/centrifuge/sequel_ccs_classifications.tsv