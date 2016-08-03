#!/bin/bash

alignment=$3

nanook extract -q -f /work/$1 -s /work

if [ -n "$alignment" ];
then
#  align (with premade index — using full fasta name for prefix) with bwa
nanook align -aligner bwa  -r /work/$2 -s /work
fi

nanook analyze -aligner bwa  -r /work/$2 -s /work 

