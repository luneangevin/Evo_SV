#!/bin/bash

# Variables
sra=$1

# Mapping
minimap2 -ax map-hifi --MD ../$sra/ref_$sra.fna ../$sra/$sra.fastq.gz --MD > ../$sra/$sra.sam

