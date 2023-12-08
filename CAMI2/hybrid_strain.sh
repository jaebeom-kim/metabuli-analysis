#!/bin/bash

arr=(0 10 20 30 40 50 60 70 80 90)

for idx in ${arr[@]}
do
 ~/kraken2/kraken2 --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2  --paired \
	 --report /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2_strain_${idx}_report \
	 --threads 32 \
	 --minimum-hit-groups 3 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/strain/query/short_read/2018.09.07_11.43.52_sample_${idx}/reads/anonymous_reads.fna_2 \
     --unclassified-out /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kraken2_${idx}_unclassified#.fna \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2_strain_${idx}_classifications.tsv

 ~/kraken2/kraken2 --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2x --paired \
     --report /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2x_strain_${idx}_report \
     --threads 32 \
     --minimum-hit-groups 3 \
     /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kraken2_${idx}_unclassified_1.fna \
     /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kraken2_${idx}_unclassified_2.fna \
     > /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2x_strain_${idx}_classifications.tsv

 awk -F '\t' '{if($1 == "C") print $0}' /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2_strain_${idx}_classifications.tsv \
	> /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2+kr2x_strain_${idx}_classifications.tsv

 cat /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2x_strain_${idx}_classifications.tsv \
	>> /data3/jaebeom/benchmarks/cami-gtdb/results/strain/hybrid/kr2+kr2x_strain_${idx}_classifications.tsv
done
