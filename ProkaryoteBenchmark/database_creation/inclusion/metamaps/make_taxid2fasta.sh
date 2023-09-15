#!/bin/bash

# We have two files
# 1. accession2taxid.txt
#   - This file has the following format:
#       accession1 taxid1
#       accession2 taxid2
# 2. accession2fasta.txt
#   - This file has the following format:
#       accession1 fasta1
#       accession2 fasta2

# We want to make a file that has the following format:
# taxid1 fasta1
# taxid2 fasta2

# We can do this by using the following command:
sort -k1,1 accession2taxid.txt > accession2taxid.sorted.txt
sort -k1,1 accession2fasta.txt > accession2fasta.sorted.txt

join -1 1 -2 1 accession2taxid.sorted.txt accession2fasta.sorted.txt | awk '{print $2, $3}' > taxid2fasta.txt