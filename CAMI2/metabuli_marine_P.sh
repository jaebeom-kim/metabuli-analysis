#!/bin/bash

arr=(0 1 2 3 4 5 6 7 8 9)

for idx in ${arr[@]}
do
 ~/Metabuli-temp/build-new/src/metabuli classify --threads 32 \
	 --min-sp-score 0.5 --min-score 0.15 \
	 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_2 \
	 ./ /data3/jaebeom/benchmarks/cami-gtdb/results/marine/metabuli20/ mar_P_0510_${idx} > /data3/jaebeom/benchmarks/cami-gtdb/results/marine/metabuli20/log_${idx}
done
