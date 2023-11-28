#!/bin/bash

# Reference: https://github.com/bioinformatics-centre/kaiju

# Edit the header of the protein sequences to include taxid
# Format) >sequenceID_taxid

# change the header of the CHM13 v2 protein sequences to include taxid
# awk '{if($0 ~ /^>/) {print ">9606"} else {print $0}}' \
#     /fast/jaebeom/realdata_benchmarks/databases/kaiju/GCF_009914755.1_T2T-CHM13v2.0_protein.faa \
#     > /fast/jaebeom/realdata_benchmarks/databases/kaiju/9606.faa

cat /fast/jaebeom/realdata_benchmarks/databases/kaiju/9606.faa \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed.kaiju.faa \
    > /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kaiju.faa

~/kaiju_latest/kaiju-mkbwt -n 32 -a ARNDCQEGHILKMFPOSUTWYVBZXJ \
    -o /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kaiju/covid_ex_DB \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kaiju.faa

~/kaiju_latest/kaiju-mkfmi /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kaiju/covid_ex_DB