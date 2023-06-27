#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8 | cut -d '_' -f1)
	 ~/krakenuniq/krakenuniq --report-file /data3/jaebeom/benchmarks/covid_inclusion/results/krakenuniq/${sample}_report.tsv --paired --db ./ --threads 16 ${read1} ${read2} > /data3/jaebeom/benchmarks/covid_inclusion/results/krakenuniq/${sample}_readclassification.tsv
done

