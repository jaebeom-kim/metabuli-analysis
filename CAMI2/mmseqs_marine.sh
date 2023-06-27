#!/bin/bash

arr=(4 5 6 7 8 9)

for idx in ${arr[@]}
do
mmseqs easy-taxonomy --threads 64 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads_merged.fna ./seqTaxDB ../../results/marine/mmseqs/mar_filter_off_${idx} ./tmp --orf-filter 0
done
