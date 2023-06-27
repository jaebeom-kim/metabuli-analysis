#!/bin/bash

list=$1

awk '{print $1}' "${list}" | while read -r read1;
do
	sample=$(echo ${read1} | cut -d '/' -f8 | cut -d '_' -f1)
	mmseqs easy-taxonomy --threads 32 ${read1} ./seqTaxDB /data3/jaebeom/benchmarks/covid_inclusion/results/mmseqs/${sample} ./tmp --orf-filter 0 
done

