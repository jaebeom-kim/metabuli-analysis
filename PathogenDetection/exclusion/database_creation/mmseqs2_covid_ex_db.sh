#!/bin/bash

mmseqs createdb \
        /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/proteomes/viral.protein.filtered.SARS-CoV-2-removed+huamn.kraken2x.faa \
        /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/mmseqs2/covid_ex_DB

mmseqs createtaxdb \
        /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/mmseqs2/covid_ex_DB \
        /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/mmseqs2/ \
        --ncbi-tax-dump ./taxonomy \
        --tax-mapping-file /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/kraken2x/seqid2taxid.map
