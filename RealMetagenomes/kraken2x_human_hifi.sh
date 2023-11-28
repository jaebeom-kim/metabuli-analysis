#!/bin/bash

 ~/kraken2/kraken2 --db /fast/jaebeom/realdata_benchmarks/databases/kraken2x \
	 --report /fast/jaebeom/realdata_benchmarks/results/kraken2x_human_hifi_report.tsv \
	 --threads 32 \
	 /fast/jaebeom/realdata_benchmarks/human_hifi/SRR15489017.fastq \
	 --minimum-hit-groups 3 \
	 > /fast/jaebeom/realdata_benchmarks/results/kraken2x_human_hifi_classifications.tsv

