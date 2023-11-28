#!/bin/bash

# ont
centrifuge -x /fast/jaebeom/gtdb-inclusion-db/databases/centrifuge/centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/results/centrifuge/ont_report.tsv \
	-U /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_ont.fq
	> /fast/jaebeom/long-read/results/centrifuge/ont_classifications.tsv

# sequel
centrifuge -x /fast/jaebeom/gtdb-inclusion-db/databases/centrifuge/centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/results/centrifuge/sequel_report.tsv \
	-U /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel.fq
	> /fast/jaebeom/long-read/results/centrifuge/sequel_classifications.tsv

# sequel ccs
centrifuge -x /fast/jaebeom/gtdb-inclusion-db/databases/centrifuge/centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/results/centrifuge/sequel_ccs_report.tsv \
	-U /fast/jaebeom/long-read/inclusion/prokaryote_inclusion_sequel_ccs.fq \
	> /fast/jaebeom/long-read/results/centrifuge/sequel_ccs_classifications.tsv
