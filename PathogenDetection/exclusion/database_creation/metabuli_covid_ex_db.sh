#!/bin/bash

# Add to library

find /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/genomes -name '*.fna' > genome_list.txt

~/dev/Metabuli/build-release/src/metabuli add-to-library \
    ./genome_list.txt \
    ./taxonomy/nucl_gb_used.accession2taxid \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/metabuli \
    --taxonomy-path ./taxonomy  

find /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/metabuli/library -name '*.fna' \
    > /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/metabuli \
    /data3/jaebeom/benchmarks/covid_exclusion/db_with_human/metabuli/library-files.txt \
    ./taxonomy/nucl_gb_used.accession2taxid \
    --taxonomy-path ./taxonomy \
    --threads 32  
