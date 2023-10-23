#!/bin/bash

## illumina

results=$1
# <results file format>
# absolute path to results file 1
# absolute path to results file 2
# ...

answer=$2
# <answer file format>
# absolute path to answer file 1
# absolute path to answer file 2
# ...

taxonomy=$3
# directory containing taxonomy dump files used for DB creation

threads=$4

col_readid=0
col_taxid=1

## pacbio_sequel

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_sequel_1.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 6 \
        > ./subspecies-exclusion_sequel_grade_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_sequel_2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 2 \
        > ./subspecies-exclusion_sequel_grade_2.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_sequel_3.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 2 \
        > ./subspecies-exclusion_sequel_grade_3.txt

# ont
~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_ont_1.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 1 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 6 \
        > ./subspecies-exclusion_ont_grade_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_ont_2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 2 \
        > ./subspecies-exclusion_ont_grade_2.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_files_ont_3.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 2 \
        > ./subspecies-exclusion_ont_grade_3.txt
