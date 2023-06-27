#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8)
	~/kraken2/kraken2 --db ./ \
		--paired \
		--minimum-hit-groups 3 \
		--report /data3/jaebeom/benchmarks/covid_exclusion/results/kraken2/${sample}_0512_report.tsv \
		--threads 16 ${read1} ${read2} > /data3/jaebeom/benchmarks/covid_exclusion/results/kraken2/${sample}_0512_readclassifications.tsv
done

