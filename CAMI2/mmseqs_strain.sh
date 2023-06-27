#!/bin/bash

arr=(0 10 20 30 40 50 60 70 80 90) 

for idx in ${arr[@]}
do
mmseqs easy-taxonomy --threads 32 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads_merged.fna \
	./seqTaxDB ../../results/strain/mmseqs/strain_${idx} ./tmp --orf-filter 0
done
