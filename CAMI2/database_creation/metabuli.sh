#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli add-to-library \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/inclusion/metabuli/inclusion_db_genomes.txt \
    /data3/jaebeom/benchmarks/cami/ncbi_taxonomy_accession2taxid/nucl_gb.accession2taxid \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli \
    --taxonomy-path /data3/jaebeom/benchmarks/cami/cami2_taxonomy/ \
    
find /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli/library -name '*.fna' \
    > /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli \
    /data3/jaebeom/benchmarks/cami-gtdb/databases/metabuli/library-files.txt \
    /data3/jaebeom/benchmarks/cami/ncbi_taxonomy_accession2taxid/nucl_gb.accession2taxid \
    --taxonomy-path /data3/jaebeom/benchmarks/cami/cami2_taxonomy/ \
    --threads 32 \
    
