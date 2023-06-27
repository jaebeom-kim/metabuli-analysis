#!/bin/bash

~/kraken2/kraken2 --db ./ \
	--report /fast/jaebeom/long-read/exclusion/results/kraken2/ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/exclusion/ont.fastq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/exclusion/results/kraken2/ont_classifications.tsv
