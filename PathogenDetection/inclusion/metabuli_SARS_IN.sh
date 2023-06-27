#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8 | cut -d '_' -f1)
	~/Metabuli-temp/build-new/src/metabuli classify --seq-mode 2 \
		${read1} ${read2} \
		/data3/jaebeom/benchmarks/covid_inclusion/database/metabuli20/ \
		/data3/jaebeom/benchmarks/covid_inclusion/results/metabuli20/ ${sample}_0508 \
		--threads 32 --print-log 0 \
		--taxonomy-path ../metabuli20/taxonomy 
	#> ${sample}.log

done

