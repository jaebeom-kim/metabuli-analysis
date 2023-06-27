#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f7)
	centrifuge -x covid_ex -f --threads 16 -k 1 --report-file /data3/jaebeom/benchmarks/covid_exclusion/results/centrifuge/${sample}_report.tsv -1 ${read1} -2 ${read2} > /data3/jaebeom/benchmarks/covid_exclusion/results/centrifuge/${sample}_readclassification.tsv


done

