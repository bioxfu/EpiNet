pc <- read.table('RNA/57epigenomes.RPKM.pc.tsv', head=T, row.names = 1)
nc <- read.table('RNA/57epigenomes.RPKM.nc.tsv', head=T, row.names = 1)
all <- rbind(pc, nc)
all <- all[, c('E066', 'E096', 'E097', 'E098', 'E112', 'E113')]
colnames(all) <- c('Liver', 'Lung', 'Ovary', 'Pancreas', 'Thymus', 'Spleen')

all_class <- sapply(all, function(x){
  cutoff <- median(x)
  x[x >= cutoff] <- 1
  x[x < cutoff] <- 0
  x
})

rownames(all_class) <- rownames(all)
apply(all_class, 2, table)

gene <- read.table('RNA/gene_TSS_flank_10k.bed', stringsAsFactors = F)$V4
all_class <- all_class[gene, ]

#write.table(all_class, 'RNA/gene_expr_binary_class.tsv', sep='\t', quote = F, col.names = NA)

write.table(all_class[, 'Liver'], 'Liver/liver_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
write.table(all_class[, 'Lung'], 'Lung/lung_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
write.table(all_class[, 'Ovary'], 'Ovary/ovary_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
write.table(all_class[, 'Pancreas'], 'Pancreas/pancreas_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
write.table(all_class[, 'Spleen'], 'Spleen/spleen_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
write.table(all_class[, 'Thymus'], 'Thymus/thymus_gene_expr_binary_class.tsv', quote = F, col.names = F, row.names = F)
