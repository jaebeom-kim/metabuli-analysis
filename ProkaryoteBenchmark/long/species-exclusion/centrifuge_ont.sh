#!/bin/bash


centrifuge -x centri \
	-q --threads 32 -k 1 \
	--report-file /fast/jaebeom/long-read/exclusion/results/centrifuge/ont_report.tsv \
	-U /fast/jaebeom/long-read/exclusion/ont.fastq \
	> /fast/jaebeom/long-read/exclusion/results/centrifuge/ont_classifications.tsv
