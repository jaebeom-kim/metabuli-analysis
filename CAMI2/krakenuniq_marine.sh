#!/bin/bash

arr=(0 1 2 3 4 5 6 7 8 9)

for idx in ${arr[@]}
do
 ~/krakenuniq/krakenuniq --report-file ../../results/marine/krakenuniq/mar_${idx}_report.tsv --paired --db ./ --threads 32 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_1 /data3/jaebeom/benchmarks/cami/marine/query/simulation_short_read/2018.08.15_09.49.32_sample_${idx}/reads/anonymous_reads.fna_2 > ../../results/marine/krakenuniq/mar_${idx}_readclassification.tsv

done
