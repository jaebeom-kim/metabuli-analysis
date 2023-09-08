#!/bin/bash

sourmash sketch fromfile files.csv -p dna,scaled=1000 \
        -o /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion_db_sigs.zip \
        --force-output-already-exists > log

unzip /mnt/scratch/jaebeom/gtdb_202_inclusion/databases/sourmash/inclusion_db_sigs.zip \


# sourmash lca index --scaled 1000 -f taxonomy.csv inclusion.lca.json /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/signatures/*.sig.gz*

# == This is sourmash version 4.8.3. ==
# == Please cite Brown and Irber (2016), doi:10.21105/joss.00027. ==

# saving to LCA DB: inclusion.lca.json
# Building LCA database with ksize=31 scaled=10000 moltype=DNA.
# examining spreadsheet headers...
# ** assuming column 'MAGs' is identifiers in spreadsheet
# ** assuming column 'Domain' is superkingdom in spreadsheet
# ** assuming column 'Speices' is species in spreadsheet
# whoa, too many assumptions. are the headers right?
# expecting identifiers,superkingdom,phylum,class,order,family,genus,species,strain
# ...continue, because --force was specified.
# ** assuming column 'Subspecies' is strain in spreadsheet
# whoa, too many assumptions. are the headers right?
# expecting identifiers,superkingdom,phylum,class,order,family,genus,species,strain
# ...continue, because --force was specified.
# 22819 distinct identities in spreadsheet out of 22819 rows.
# 22819 distinct lineages in spreadsheet out of 22819 rows.
# ... loaded 22819 signatures.
# loaded 2688192 hashes at ksize=31 scaled=10000
# 21558 assigned lineages out of 22819 distinct lineages in spreadsheet.
# 21558 identifiers used out of 22819 distinct identifiers in spreadsheet.
# WARNING: 1261 duplicate signatures.
# WARNING: no signatures for 1261 spreadsheet rows.
# WARNING: 1261 unused lineages.
# WARNING: 1261 unused identifiers.