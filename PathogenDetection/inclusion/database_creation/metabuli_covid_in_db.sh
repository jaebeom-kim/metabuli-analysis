#!/bin/bash

# Add to library

# ~/dev/Metabuli/build-release/src/metabuli add-to-library \
#     ./genome_list.txt \
#     ./taxonomy/nucl_gb_used.accession2taxid \
#     /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/metabuli \
#     --taxonomy-path ./taxonomy  

find /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/metabuli/library -name '*.fna' \
    > /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/metabuli/library-files.txt

~/dev/Metabuli/build-release/src/metabuli build \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/metabuli \
    /data3/jaebeom/benchmarks/covid_inclusion/db_with_human/metabuli/library-files.txt \
    ./taxonomy/nucl_gb_used.accession2taxid \
    --taxonomy-path ./taxonomy \
    --threads 32  
