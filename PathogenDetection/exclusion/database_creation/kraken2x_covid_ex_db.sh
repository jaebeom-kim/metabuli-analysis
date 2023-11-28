#!/bin/bash

# Reference: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >kraken:taxid|taxid
# Merge all the protein sequences into one file > proteins-for-inclusion_kraken2x.faa

# Taxonomy files
# cp -r ./taxonomy /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2x

# mkdir -p /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2x/library

# awk -F '>' '{if($0 ~ /^>/) {print ">kraken:taxid|"$2} else {print $0}}' \
#     /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kaiju.faa \
#     > /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kraken2x.faa

# kraken2-build --add-to-library /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kraken2x.faa \
#     --db /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2x --protein

kraken2-build --build --threads 2 --protein --db /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2x \
    
