#!/bin/bash

arr=(0 2 4 6 8 10 12 14 16 18 20) 

for idx in ${arr[@]}
do
mmseqs easy-taxonomy --threads 64 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads_merged.fna \
	./seqTaxDB \
	../../results/soil/mmseqs/soil_${idx} ./tmp --orf-filter 0
done
