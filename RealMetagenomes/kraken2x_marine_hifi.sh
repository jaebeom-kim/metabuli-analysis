#!/bin/bash

 ~/kraken2/kraken2 --db /fast/jaebeom/realdata_benchmarks/databases/kraken2x \
	 --report /fast/jaebeom/realdata_benchmarks/results/kraken2x_marine_hifi_report.tsv \
	 --threads 32 \
	 /fast/jaebeom/realdata_benchmarks/marine_hifi/ERR4920902.fastq \
	 --minimum-hit-groups 3 \
	 > /fast/jaebeom/realdata_benchmarks/results/kraken2x_marine_hifi_classifications.tsv

