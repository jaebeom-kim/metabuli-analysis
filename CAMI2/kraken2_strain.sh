#!/bin/bash

arr=(0 10 20 30 40 50 60 70 80 90)

for idx in ${arr[@]}
do
 ~/kraken2/kraken2 --db ./ --paired \
	 --report /data3/jaebeom/benchmarks/cami-gtdb/results/strain/kraken2/str_0512_${idx}_report \
	 --threads 32 \
	 --minimum-hit-groups 3 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_2 \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/strain/kraken2/str_0512_${idx}_readclassification.tsv
done
