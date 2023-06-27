#!/bin/bash

 ~/kraken2/kraken2 --db ./ --paired \
	 --report /mnt/scratch/jaebeom/real-marine/results/kraken2/report.tsv \
	 --threads 32 \
	 /fast/jaebeom/marine/SRR23604821_1.fastq \
	 /fast/jaebeom/marine/SRR23604821_2.fastq \
	 --minimum-hit-groups 3 \
	 > /mnt/scratch/jaebeom/real-marine/results/reads.tsv
