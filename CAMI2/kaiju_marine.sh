#!/bin/bash


array=(0 1 2 3 4 5 6 7 8 9)


for idx in ${array[@]}
do
~/kaiju_latest/kaiju -t ../metabuli/taxonomy/nodes.dmp -f ./proteins.fmi \
	-i /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_1 \
       	-j /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_2 \
	-z 32 -o /data3/jaebeom/benchmarks/cami-gtdb/results/marine/kaiju/mar_${idx}.tsv
done
