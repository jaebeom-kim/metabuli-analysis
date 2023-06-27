#!/bin/bash

 ~/kraken2/kraken2 --db ./ --paired \
	 --report /mnt/scratch/jaebeom/real-human/kraken2/report.tsv \
	 --threads 32 \
	 /fast/jaebeom/human/SRR24315757_1.fastq \
	 /fast/jaebeom/human/SRR24315757_2.fastq \
	 --minimum-hit-groups 3 \
	 > /mnt/scratch/jaebeom/real-human/kraken2/reads.tsv
