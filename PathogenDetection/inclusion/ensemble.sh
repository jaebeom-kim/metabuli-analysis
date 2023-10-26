#!/bin/bash

# DNA: KrakenUniq
# AA: Kraken2X

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8 | cut -d '_' -f1)
	echo $sample
	 ~/krakenuniq/krakenuniq --report-file /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_kru_report.tsv \
	 	--paired \
	 	--db /data3/jaebeom/benchmarks/covid_inclusion/database/krakenuniq \
	 	--threads 16 \
	 	${read1} \
	 	${read2} \
     	--unclassified-out /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
	 	> /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_kru_classifications.tsv

    awk -F 'N' '{if (NR%2 == 1) {print $0"/1"} else {print $1} }' \
        /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
        > /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified_1.fna
    
    awk -F 'N' '{if (NR%2 == 1) {print $0"/2"} else {print $2} }' \
        /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified.fna \
        > /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified_2.fna

	~/kraken2/kraken2 --db /data3/jaebeom/benchmarks/covid_inclusion/database/kraken2x \
		--paired \
		--report /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/kraken2x_${sample}_report.tsv \
		--threads 16 \
		/data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified_1.fna \
		/data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/krakenuniq_${sample}_unclassified_2.fna \
		> /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/kraken2x_${sample}_classifications.tsv

    awk -F 	'\t' '{if($1 == "C") print $0}' \
        /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_kru_classifications.tsv \
        > /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_krakenuniq+kraken2x_classifications.tsv

    cat /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/kraken2x_${sample}_classifications.tsv \
	    >> /data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_krakenuniq+kraken2x_classifications.tsv

	~/dev/Metabuli/build-release/src/metabuli binning2report \
		/data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/${sample}_krakenuniq+kraken2x_classifications.tsv \
		/data3/jaebeom/benchmarks/covid_inclusion/results/ensemble/ \
		${sample}_krakenuniq+kraken2x \
		/data3/jaebeom/benchmarks/covid_inclusion/database/krakenuniq/taxonomy
done

