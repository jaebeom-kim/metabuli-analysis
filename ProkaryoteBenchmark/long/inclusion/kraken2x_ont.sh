#!/bin/bash

~/kraken2/kraken2 --db ./ \
	--report /fast/jaebeom/long-read/results/kraken2x/ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/ont.fastq \
	--minimum-hit-groups 3 \
	> /fast/jaebeom/long-read/results/kraken2x/ont_classifications.tsv
