#!/bin/bash

samtools view -bS $1 $2 > temp.bam
samtools sort $3 -m 2000000000 temp.bam sorted
if [[ $3 == '' ]] ;
then
samtools index sorted.bam
fi
rm temp.bam

