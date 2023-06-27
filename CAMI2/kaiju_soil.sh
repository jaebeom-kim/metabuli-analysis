#!/bin/bash

array=(0 2 4 6 8 10 12 14 16 18 20)

for idx in ${array[@]}
do
	~/kaiju_latest/kaiju -t ../metabuli/taxonomy/nodes.dmp -f ./proteins.fmi \
		-i /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_1 \
		-j /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_2 \
		-z 32 -o /data3/jaebeom/benchmarks/cami-gtdb/results/soil/kaiju/soil_${idx}.tsv
done
