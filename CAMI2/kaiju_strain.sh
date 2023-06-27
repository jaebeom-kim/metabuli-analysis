#!/bin/bash

array=(0 10 20 30 40 50 60 70 80 90)

for idx in ${array[@]}
do
~/kaiju_latest/kaiju -t ../metabuli/taxonomy/nodes.dmp -f ./proteins.fmi \
	-i /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_1 \
	-j /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_2 -z 32 -o /data3/jaebeom/benchmarks/cami-gtdb/results/strain/kaiju/strain_${idx}.tsv
done
