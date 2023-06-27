#!/bin/bash

arr=(0 2 4 6 8 10 12 14 16 18 20)

for idx in ${arr[@]}
do
 ~/kraken2/kraken2 --db ./ --paired \
	 --report /data3/jaebeom/benchmarks/cami-gtdb/results/soil/kraken2x/soil_${idx}_report.tsv \
	 --threads 32 \
	 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_2 \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/soil/kraken2x/soil_${idx}_readclassification.tsv
done
