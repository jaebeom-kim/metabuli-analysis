#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 8 \
        > ./grade.txt