#!/bin/bash

arr=(0 10 20 30 40 50 60 70 80 90)

for idx in ${arr[@]}
do
centrifuge -x ex -f --threads 64 -k 1 --report-file /data3/jaebeom/benchmarks/cami-gtdb/results/strain/centrifuge/str_${idx}_report.tsv \
	-1 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_1 \
	-2 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_2 \
	> /data3/jaebeom/benchmarks/cami-gtdb/results/strain/centrifuge/str_${idx}_readclassification.tsv
done
