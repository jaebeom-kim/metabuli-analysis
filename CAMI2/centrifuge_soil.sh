#!/bin/bash

arr=(0 2 4 6 8 10 12 14 16 18 20)

for idx in ${arr[@]}
do
centrifuge -x ex -f --threads 32 -k 1 --report-file /data3/jaebeom/benchmarks/cami-gtdb/results/soil/centrifuge/soil_${idx}_report.tsv \
	-1 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_1 \
	-2 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_2 \
	> /data3/jaebeom/benchmarks/cami-gtdb/results/soil/centrifuge/soil_${idx}_readclassification.tsv
done
