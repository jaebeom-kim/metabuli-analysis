#!/bin/bash

 ~/kraken2/kraken2 --db /fast/jaebeom/realdata_benchmarks/databases/kraken2 \
 	 --paired \
	 --report /fast/jaebeom/realdata_benchmarks/results/kraken2_marine_short_report.tsv \
	 --threads 32 \
	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_1.fastq \
	 /fast/jaebeom/realdata_benchmarks/marine/SRR23604821_2.fastq \
	 --minimum-hit-groups 3 \
	 > /fast/jaebeom/realdata_benchmarks/kraken2_marine_short_classificatios.tsv