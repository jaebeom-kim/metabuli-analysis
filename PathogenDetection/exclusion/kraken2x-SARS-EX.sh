#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f7)
	~/kraken2/kraken2 --db ./ --paired --report /data3/jaebeom/benchmarks/covid_exclusion/results/kraken2x/${sample}_report.tsv --threads 16 ${read1} ${read2} > /data3/jaebeom/benchmarks/covid_exclusion/results/kraken2x/${sample}_readclassifications.tsv
done

