# Snakemake pipeline for detection and analysis of structural variants in reference genomes

This pipeline detects heterozygous SVs using three tools: SVIM, Sniffles and CuteSV.

## Installation

The following dependencies must be installed before launching the pipeline :
* conda
* snakemake

## Usage

You can launch the pipeline in two ways: either by running the *launcher.sh* script, or by executing the following command in the terminal :
'''

snakemake -s Snakefile --use-conda --use-singularity --cores $ncores --config dataset=<dataset> --K <K> --pop <pop> --chrom <chromosome>

'''
