#!/bin/bash

~/dev/Metabuli/build-release/src/metabuli grade \
    ./prokaryote_benchmark_results.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
    ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
    --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
    --readid-col 0 \
    --taxid-col 1 \
    --test-type gtdb \
    --threads 6 \
    > ./prokaryote_Metamaps_noEM_grade.txt