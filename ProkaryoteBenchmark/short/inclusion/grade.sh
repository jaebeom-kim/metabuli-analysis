#!/bin/bash

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

metabuli grade ${results} ${answer} ${taxonomy} \
        --test-rank subspecies,species,genus,family,order,class,phylum,superkingdom \
        --test-type gtdb \
        --threads ${threads} \