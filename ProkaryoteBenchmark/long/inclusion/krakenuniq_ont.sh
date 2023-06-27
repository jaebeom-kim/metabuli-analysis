#!/bin/bash

~/krakenuniq/krakenuniq --db ./ \
	--report-file /fast/jaebeom/long-read/results/krakenuniq/ont_report.tsv \
	--threads 32 \
	/fast/jaebeom/long-read/ont.fastq \
	> /fast/jaebeom/long-read/results/krakenuniq/ont_classifications.tsv
