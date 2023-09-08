#!/bin/bash

#sourmash sketch fromfile files.csv -p dna,scaled=1000 \
#        -o /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclsuion_db_sigs.zip \
 #       --force-output-already-exists > log

#unzip /mnt/scratch/jaebeom/gtdb_202_exclusion/databases/sourmash/exclsuion_db_sigs.zip

sourmash lca index --scaled 1000 -f taxonomy.csv exclusion.lca.json signatures/*.sig.gz*

# == This is sourmash version 4.8.3. ==
# == Please cite Brown and Irber (2016), doi:10.21105/joss.00027. ==

# saving to LCA DB: exclusion.lca.json
# Building LCA database with ksize=31 scaled=10000 moltype=DNA.
# examining spreadsheet headers...
# ** assuming column 'MAGs' is identifiers in spreadsheet
# ** assuming column 'Domain' is superkingdom in spreadsheet
# ** assuming column 'Subspecies' is strain in spreadsheet
# whoa, too many assumptions. are the headers right?
# expecting identifiers,superkingdom,phylum,class,order,family,genus,species,strain
# ...continue, because --force was specified.
# 22452 distinct identities in spreadsheet out of 22452 rows.
# 22452 distinct lineages in spreadsheet out of 22452 rows.
# ... loaded 22452 signatures.
# loaded 2553114 hashes at ksize=31 scaled=10000
# 21191 assigned lineages out of 22452 distinct lineages in spreadsheet.
# 21191 identifiers used out of 22452 distinct identifiers in spreadsheet.
# WARNING: 1261 duplicate signatures.
# WARNING: no signatures for 1261 spreadsheet rows.
# WARNING: 1261 unused lineages.
# WARNING: 1261 unused identifiers.
