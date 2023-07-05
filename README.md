# Snakemake pipeline for detection and analysis of structural variants in reference genomes

This pipeline detects heterozygous SVs using three tools: SVIM, Sniffles and CuteSV.

## Installation

The following dependencies must be installed before launching the pipeline :
* conda
* snakemake

## Usage

You can launch the pipeline in two ways: either by running the *launcher.sh* script, or by executing the following command in the terminal :
```
snakemake -s pipeline.snake --config config.yaml --use-conda --conda-frontend "mamba" --cores 8 --rerun-incomplete
```

## Configuration file

The configuration file *config.yaml* is used to enter the accession numbers corresponding to the species being studied. It can also be used to adjust certain parameters of the detection tools, such as the minimum size of SVs or the minimum coverage.

## Input data

The input data are the accession numbers of the long-reads (ERR) and the reference genome (GCA).

## Output file

The output file is a VCF file containing the list of SVs, named *ERRxxx_merged.vcf*. It is the result of merging the three SV catalogues generated by the SVIM, Sniffles and CuteSV tools. You can also access each catalogue individually, named *ERRxxx_toolsname.vcf*.

## Additional folders

The *Envs* folder contains the yaml files used to create the conda environments needed to run the pipeline. The *Scripts* folder contains the individual scripts for each stage of the pipeline.

## References

Danecek, Petr, et al. « Twelve Years of SAMtools and BCFtools ». GigaScience, vol. 10, nᵒ 2, janvier 2021, p. giab008. DOI.org (Crossref), https://doi.org/10.1093/gigascience/giab008.

Heller, David, et Martin Vingron. « SVIM: Structural Variant Identification Using Mapped Long Reads ». Bioinformatics, édité par Inanc Birol, vol. 35, nᵒ 17, septembre 2019, p. 2907‑15. DOI.org (Crossref), https://doi.org/10.1093/bioinformatics/btz041.

Jiang, Tao, et al. « Long-Read-Based Human Genomic Structural Variation Detection with cuteSV ». Genome Biology, vol. 21, nᵒ 1, décembre 2020, p. 189. DOI.org (Crossref), https://doi.org/10.1186/s13059-020-02107-y.

Kirsche, Melanie, et al. « Jasmine and Iris: Population-Scale Structural Variant Comparison and Analysis ». Nature Methods, vol. 20, nᵒ 3, mars 2023, p. 408‑17. DOI.org (Crossref), https://doi.org/10.1038/s41592-022-01753-3.

Li, Heng. « Minimap2: Pairwise Alignment for Nucleotide Sequences ». Bioinformatics, édité par Inanc Birol, vol. 34, nᵒ 18, septembre 2018, p. 3094‑100. DOI.org (Crossref), https://doi.org/10.1093/bioinformatics/bty191.

Sedlazeck, Fritz J., et al. « Accurate Detection of Complex Structural Variations Using Single-Molecule Sequencing ». Nature Methods, vol. 15, nᵒ 6, juin 2018, p. 461‑68. DOI.org (Crossref), https://doi.org/10.1038/s41592-018-0001-7.
