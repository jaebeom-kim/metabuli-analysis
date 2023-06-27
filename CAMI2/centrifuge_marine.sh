#!/bin/bash

arr=(0 1 2 3 4 5 6 7 8 9)

for idx in ${arr[@]}
do
centrifuge -x ex -f --threads 32 -k 1 --report-file /data3/jaebeom/benchmarks/cami-gtdb/results/marine/centrifuge/mar_${idx}_report.tsv \
	-1 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_1 \
	-2 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_2 \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/marine/centrifuge/mar_${idx}_readclassification.tsv
done
