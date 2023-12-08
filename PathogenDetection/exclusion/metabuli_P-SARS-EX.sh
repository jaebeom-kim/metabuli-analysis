#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8)
	~/Metabuli-temp/build-new/src/metabuli classify --seq-mode 2 \
		--min-sp-score 0.5 --min-score 0.15 \
		${read1} ${read2} \
		/data3/jaebeom/benchmarks/covid_exclusion/databases/metabuli20/ \
		/data3/jaebeom/benchmarks/covid_exclusion/results/metabuli20/ \
		${sample}_P --threads 32 \
		--taxonomy-path ../metabuli20/taxonomy
done

