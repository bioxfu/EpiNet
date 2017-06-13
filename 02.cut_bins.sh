module add bedtools/2.25.0

cd RNA
cat Ensembl_v65.Gencode_v10.ENSG.gene_info|awk '{print $1"\tchr"$2"\t"$3"\t"$4"\t"$1"\t"$6"\t"$5}'|sed 's/-1$/-/'|sed 's/1$/+/'|sort -k1,1|uniq > tmp1
cat 57*|cut -f1|grep -v 'gene_id'|sort|uniq > tmp2
join -j 1 tmp1 tmp2|tr ' ' '\t'|cut -f2-7|sortBed > gene.bed
rm tmp*

cat gene.bed|awk '{if($6=="+") print $1"\t"$2-5000"\t"$2+5000"\t"$4}' > gene_TSS_flank_10k.bed
cat gene.bed|awk '{if($6=="-") print $1"\t"$3-5000"\t"$3+5000"\t"$4}' >> gene_TSS_flank_10k.bed
grep -v '-' gene_TSS_flank_10k.bed|sortBed > tmp; mv tmp gene_TSS_flank_10k.bed

bedtools makewindows -b gene_TSS_flank_10k.bed -w 100 -i srcwinnum > gene_TSS_flank_10k_bin_100bp.bed

