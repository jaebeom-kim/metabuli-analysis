#!/bin/bash

# DNA: centrifuge
# AA: Kaiju

list=$1

awk '{print $1,$2}' "${list}" | while read -r read1 read2;
do
	sample=$(echo ${read1} | cut -d '/' -f8)
	echo $sample

	centrifuge -x /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/centrifuge/centrifuge \
		-f --threads 32 -k 1 \
		--report-file /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_report.tsv \
		-1 ${read1} -2 ${read2} \
		--un-conc /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_unclassified.fastq \
		> /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_classifications.tsv

	~/kaiju_latest/kaiju -t /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2/taxonomy/nodes.dmp \
		-f /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kaiju/covid_ex_DB.fmi \
		-i /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_unclassified.1.fastq \
		-j /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_unclassified.2.fastq \
		-z 32 \
		-o /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kaiju_classifications.tsv

	awk -F '\t' '{if ($2 != "unclassified" && NR != 1) print "C\t"$1"\t"$3}' \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_classifications.tsv \
		> /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_classifications_filtered.tsv

	cat /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/centri_${sample}_classifications_filtered.tsv \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_kaiju_classifications.tsv \
		> /data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_centrifuge+kaiju_classifications.tsv

	~/dev/Metabuli/build-release/src/metabuli binning2report \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/${sample}_centrifuge+kaiju_classifications.tsv \
		/data3/jaebeom/benchmarks/covid_exclusion/results/ensemble/ \
		${sample}_centrifuge+kaiju \
		/data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2/taxonomy
done

