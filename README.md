# Translation Efficiency
Scripts for the Manuscript "Coding-sequence length tunes translation elongation and codon-optimality control"

- [Translation Efficiency](#translation-efficiency)
- [Introduction](#introduction)
- [Dependencies](#dependencies)
- [Prerequisites](#prerequisites)

# Introduction

R notebooks related to different parts of the project have been uploaded to the repository.

Only a limited sets of scripts used for the analysis have been provided. They are related to TE unification (TE_unification.Rmd) and the calculation of the elongation speeds for genes and codons (Codon_Speed_calculation.Rmd)


# Dependencies

R version:
- R v4.5.1
- BioConductor v3.21

R packages:
- readxl
- writexl
- tidyverse
- zoo
- brms
- cmdstanr
- ggpubr
- org.Hs.eg.db (GO)

# Prerequisites

For TE_unification.Rmd:

- data_files/PolyProp_from_sciAdv_2023.xlsx - Data S2 from [Rahaman et al](https://doi.org/10.1126/sciadv.adh9545)
- data_files/muCSC_from_sciAdv_2023.xlsx - Data S2 from [Rahaman et al](https://doi.org/10.1126/sciadv.adh9545)
- data_files/Genes_with_recalculated_muCSC.xlsx - muCSC calculation of the genes based on CSC derived from MGC half-lives of 82 genes
- data_files/uniprotkb_proteome_UP000002311_2024_06_07.xlsx - Uniprot database with yeast proteins (used for name conversion of genes)
- data_files/TE_Lahtvee.xlsx - TE measurement from [Lahtvee et al](https://doi.org/10.1016/j.cels.2017.03.003)
- data_files/41467_2020_15749_MOESM4_ESM.xlsx - Gene names for [Yu et al](https://doi.org/10.1038/s41467-020-15749-0) with Protein IDs
- data_files/41467_2020_15749_MOESM13_ESM.xlsx - TE measurement from [Yu et al](https://doi.org/10.1038/s41467-020-15749-0)
- data_files/pnas.1817299116.sd01.tsv - TE measurement using polyA RNAseq from [Riba et al](https://doi.org/10.1073/pnas.1817299116)
- data_files/pnas.1817299116.sd02.tsv - TE measurement using Riba RiboZero RNAseq from [Riba et al](https://doi.org/10.1073/pnas.1817299116)

For Codon_Speed_calculation.Rmd

- data_files/Codon_counts.xlsx - Codon count list for *S cerivisiae* genes based on data from [SGD](https://www.yeastgenome.org/)
- Unification_wo_normalisation_TE.xlsx - Output from TE_unification.Rmd used as input for Codon_Speed_calculation.Rmd
