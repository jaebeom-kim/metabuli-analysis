#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

# Run prodigal to get protein sequences from genomes
# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid
# Merge all the protein sequences into one file > proteins-for-inclusion.faa

# change the header of the CHM13 v2 protein sequences to include taxid

# awk '{if($0 ~ /^>/) {print ">9606"} else {print $0}}' \
#     /fast/jaebeom/realdata_benchmarks/databases/kaiju/GCF_009914755.1_T2T-CHM13v2.0_protein.faa \
#     > /fast/jaebeom/realdata_benchmarks/databases/kaiju/9606.faa

cat /fast/jaebeom/realdata_benchmarks/databases/kaiju/9606.faa \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/proteomes/viral.protein.filtered.5var.kaiju.faa \
    > /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/proteomes/viral.protein.filtered.5var+huamn.kaiju.faa

mkdir -p /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kaiju/

~/kaiju_latest/kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kaiju/covid_in_DB \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/proteomes/viral.protein.filtered.5var+huamn.kaiju.faa

~/kaiju_latest/kaiju-mkfmi /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kaiju/covid_in_DB