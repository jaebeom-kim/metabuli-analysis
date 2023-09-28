#!/bin/bash

# <results file format>
# absolute path to results file 1
# absolute path to results file 2
# ...

# <answer file format>
# absolute path to answer file 1
# absolute path to answer file 2
# ...

# directory containing taxonomy dump files used for DB creation

# ~/dev/Metabuli/build-release/src/metabuli grade \
#         ./result_files.txt \
#         ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
#         ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
#         --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
#         --readid-col 1 \
#         --taxid-col 2 \
#         --test-type gtdb \
#         --threads 6 \
#         > ./inclusion_short_grade_1.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_file_mmseqs2.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 1 \
        --test-type gtdb \
        --threads 2 \
        > ./inclusion_short_grade_2.txt

~/dev/Metabuli/build-release/src/metabuli grade \
        ./result_file_centrifuge.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/answers.txt \
        ~/metabuli-analysis/ProkaryoteBenchmark/database_creation/taxonomy \
        --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
        --readid-col 0 \
        --taxid-col 2 \
        --test-type gtdb \
        --threads 2 \
        > ./inclusion_short_grade_3.txt


