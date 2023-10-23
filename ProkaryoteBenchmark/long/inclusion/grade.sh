#!/bin/bash

# It grades the results of the long-read inclusion benchmark, including both ONT and PacBio reads.

~/dev/Metabuli/build-release/src/metabuli grade \
        ./longread_results.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 13 \
        > ./inclusion_longread_grade_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./longread_results_mmseqs2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 3 \
        > ./inclusion_longread_grade_2.txt

