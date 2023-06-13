#!/bin/bash

# Variables
sra=$1

# Merging
jasmine file_list=../$sra/${sra}_vcf_list.txt out_file=../$sra/${sra}_merged.vcf
