#!/bin/bash

alignment=$3

docker run -v $(pwd):/work -w /work nano-ok:0.0.1 extract -q -f /work/$1 -s /work

if [ -n "$alignment" ];
then
#  align (with premade index — using full fasta name for prefix) with bwa
docker run -v $(pwd):/work -w /work nano-ok:0.0.1 align -aligner bwa  -r /work/$2 -s /work
fi

docker run -v $(pwd):/work -w /work nano-ok:0.0.1 analyze -aligner bwa  -r /work/$2 -s /work 

