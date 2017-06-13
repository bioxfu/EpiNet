module add bwtool/1.0

LOCI=RNA/gene_TSS_flank_10k_bin_100bp.bed

find */*.bigwig|parallel --gnu "bwtool summary -keep-bed -header -with-sum $LOCI {} {}.summary" 
