#!/bin/bash
# Usage: sh primer_maker.sh bedfile_of_circrnas genomeFASTA
# to download ce11 genome FASTA, use this line: wget -c http://hgdownload.cse.ucsc.edu/goldenPath/ce11/bigZips/chromFa.tar.gz -O - | gzip -dc | tar -xO > ce11.fa

BED=$1
genome=$2

bedtools getfasta -fi $genome -bed $BED -s -name > circ.fa
clear
echo "\n"
cat circ.fa |\
 awk 'NR%2==1{print $0;} NR%2==0{split($0,a,""); b=""; for (i=1; i<=length; i++) {if (length%2==0 && i==(length/2)+1) {b=b"<"a[i]; continue;}; if (length%2!=0 && i==int(length/2)+1) {b=b"<"a[i]; continue;}; b=b""a[i];}; print b;}' |\
tr "<" "\t" |\
awk 'NR%2==1{print $0;} NR%2==0{print tolower($2)toupper($1);}' > Output_junctions.fa
cat Output_junctions.fa
echo "\n"
echo "Junction sequences available up or in the 'Output_junctions.fa' \n"
