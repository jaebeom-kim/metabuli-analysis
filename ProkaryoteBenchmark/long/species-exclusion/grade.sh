#!/bin/bash

# ont

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_ont.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 7 \
        > ./grade_ont_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_ont_2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 7 \
        > ./grade_ont_2.txt

# sequel

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_sequel.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 7 \
        > ./grade_sequel_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_sequel_2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 2 \
        > ./grade_sequel_2.txt

