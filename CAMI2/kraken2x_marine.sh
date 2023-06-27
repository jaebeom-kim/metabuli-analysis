#!/bin/bash

arr=(0 1 2 3 4 5 6 7 8 9)

for idx in ${arr[@]}
do
 ~/kraken2/kraken2 --db ./ --paired --report /data3/jaebeom/benchmarks/cami-gtdb/results/marine/kraken2x/mar_${idx}_report.tsv \
	 --threads 32 \
	 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_2 \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/marine/kraken2x/mar_${idx}_readclassification.tsv
done
