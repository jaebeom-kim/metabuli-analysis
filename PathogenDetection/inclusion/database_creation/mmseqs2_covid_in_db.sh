#!/bin/bash

mkdir -p /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/mmseqs2

mmseqs createdb \
        /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/proteomes/viral.protein.filtered.5var+huamn.kraken2x.faa \
        /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/mmseqs2/covid_in_DB

mmseqs createtaxdb \
        /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/mmseqs2/covid_in_DB \
        /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/mmseqs2/ \
        --ncbi-tax-dump ./taxonomy \
        --tax-mapping-file /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/kraken2x/seqid2taxid.map
