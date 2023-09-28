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

col_readid=0
col_taxid=1

metabuli grade ${results} ${answer} ${taxonomy} \
        --test-rank genus,family,order,class,phylum,superkingdom \
        --readid-col ${col_readid} \
        --taxid-col ${col_taxid} \
        --test-type gtdb \
        --threads ${threads} \