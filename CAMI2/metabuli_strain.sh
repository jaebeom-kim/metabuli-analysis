#!/bin/bash

arr=(0 10 20 30 40 50 60 70 80 90)

for idx in ${arr[@]}
do
 ~/dev/Metabuli/build-release/src/metabuli classify --threads 32 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_2 \
	 ./ /data3/jaebeom/benchmarks/cami-gtdb/results/strain/metabuli20 str_0510_${idx} > /data3/jaebeom/benchmarks/cami-gtdb/results/strain/metabuli20/${idx}_log.txt
done
