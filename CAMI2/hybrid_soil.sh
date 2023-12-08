#!/bin/bash

# DNA: Kraken2
# AA: Kaiju

arr=(0 2 4 6 8 10 12 14 16 18 20)

for idx in ${arr[@]}
do
 ~/kraken2/kraken2 --db /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2 --paired \
	 --report /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_soil_${idx}_report.tsv \
	 --threads 32 \
	 --minimum-hit-groups 3 \
	 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_1 \
	 /data3/jaebeom/benchmarks/cami/soil/simulation_short_read/2019.09.27_13.59.10_sample_${idx}/reads/anonymous_reads.fna_2 \
     --unclassified-out /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_${idx}_unclassified#.fna \
	 > /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_${idx}_classifications.tsv

 ~/kaiju_latest/kaiju -t /data3/jaebeom/benchmarks/cami-gtdb/databases/kraken2/taxonomy/nodes.dmp \
	-f /data3/jaebeom/benchmarks/cami-gtdb/databases/kaiju/proteins.fmi \
	-i /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_${idx}_unclassified_1.fna \
	-j /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_${idx}_unclassified_2.fna \
	-z 32 -o /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kaiju_${idx}.tsv

awk -F '\t' '{if($1 == "C") print $0}' /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kraken2_${idx}_classifications.tsv \
	> /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kr2+kaiju_soil_${idx}_classifications.tsv

 cat /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kaiju_${idx}.tsv \
	>> /data3/jaebeom/benchmarks/cami-gtdb/results/soil/hybrid/kr2+kaiju_soil_${idx}_classifications.tsv
done
