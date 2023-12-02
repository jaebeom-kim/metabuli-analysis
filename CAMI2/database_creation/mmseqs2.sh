#!/bin/bash

mmseqs creatdb \
        /data3/jaebeom/benchmarks/cami-gtdb/proteins-for-cami_gtdb.faa \
        /data3/jaebeom/benchmarks/cami-gtdb/databases/mmseqs2/cami

mmseqs createtaxdb \
        /data3/jaebeom/benchmarks/cami-gtdb/databases/mmseqs2/cami \
        /data3/jaebeom/ \
        --ncbi-tax-dump /data3/jaebeom/benchmarks/cami-gtdb/databases/krakenuniq/taxonomy \
        --tax-mapping-file ./seqid2taxid.map 

