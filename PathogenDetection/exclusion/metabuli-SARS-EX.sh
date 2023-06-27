#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8)
	~/Metabuli-temp/build-new/src/metabuli classify --seq-mode 2 \
		--print-log 0 \
		${read1} ${read2} \
		/data3/jaebeom/benchmarks/covid_exclusion/databases/metabuli20_0510/ \
		/data3/jaebeom/benchmarks/covid_exclusion/results/metabuli20_0509/ \
		${sample} --threads 32 \
		--taxonomy-path ../metabuli20/taxonomy
done

