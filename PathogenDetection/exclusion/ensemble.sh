#!/bin/bash

# DNA: KrakenUniq
# AA: Kaiju

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8)
	echo $sample
	 ~/krakenuniq/krakenuniq --report-file /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kru_report.tsv \
	 	--paired \
	 	--db /data3/jaebeom/benchmarks/covid_exclusion/databases/krakenuniq \
	 	--threads 16 \
	 	${read1} \
	 	${read2} \
     	--unclassified-out /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
	 	> /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kru_classifications.tsv

    awk -F 'N' '{if (NR%2 == 1) {print $0"/1"} else {print $1} }' \
        /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
        > /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified_1.fna
    
    awk -F 'N' '{if (NR%2 == 1) {print $0"/2"} else {print $2} }' \
        /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
        > /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified_2.fna

    ~/kaiju_latest/kaiju -t /data3/jaebeom/benchmarks/covid_exclusion/databases/kraken2/taxonomy/nodes.dmp \
		-f /data3/jaebeom/benchmarks/covid_exclusion/databases/kaiju/proteins.fmi \
		-i /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified_1.fna \
		-j /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/krakenuniq_${sample}_unclassified_2.fna \
		-z 16 \
		-o /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kaiju_classifications.tsv
    awk -F 	'\t' '{if($1 == "C") print $0}' \
        /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kru_classifications.tsv \
        > /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_krakenuniq+kaiju_classifications.tsv

    cat /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kaiju_classifications.tsv \
	    >> /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_krakenuniq+kaiju_classifications.tsv

	~/dev/Metabuli/build-release/src/metabuli binning2report \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_krakenuniq+kaiju_classifications.tsv \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/ \
		${sample}_krakenuniq+kaiju \
		/data3/jaebeom/benchmarks/covid_exclusion/databases/krakenuniq/taxonomy
done

