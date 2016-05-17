#!/bin/bash


samtools view -bS $1 $2 > temp.bam
samtools sort $3 -m 2000000000 temp.bam sorted
samtools index sorted.bam

rm temp.bam
