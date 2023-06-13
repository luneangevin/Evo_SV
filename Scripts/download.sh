#!/bin/bash

# Variables
sra=$1
genome=$2

# Téléchargement des reads
mkdir ../$sra
fastq-dump -v --gzip --outdir ../$sra $sra

# Téléchargement du génome de référence
datasets download genome accession $genome --filename ../$sra/ref_$sra.zip
unzip ../$sra/ref_$sra.zip
mv ../$sra/ncbi_dataset/data/$genome/*.fna ../$sra/ref_$sra.fna
