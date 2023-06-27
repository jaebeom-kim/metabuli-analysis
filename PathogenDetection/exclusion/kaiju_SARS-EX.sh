#!/bin/bash

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f7)
	~/kaiju_latest/kaiju -t ../metabuli/taxonomy/nodes.dmp -f ./proteins.fmi -i ${read1} -j ${read2} -z 16 -o /data3/jaebeom/benchmarks/covid_exclusion/results/kaiju/${sample}_result

done

