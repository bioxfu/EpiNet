mkdir RNA
cd RNA
wget -c http://egg2.wustl.edu/roadmap/data/byDataType/rna/expression/EG.name.txt
wget -c http://egg2.wustl.edu/roadmap/data/byDataType/rna/expression/Ensembl_v65.Gencode_v10.ENSG.gene_info
wget -c http://egg2.wustl.edu/roadmap/data/byDataType/rna/expression/57epigenomes.RPKM.nc.gz 
wget -c http://egg2.wustl.edu/roadmap/data/byDataType/rna/expression/57epigenomes.RPKM.pc.gz 
zcat 57epigenomes.RPKM.nc.gz > 57epigenomes.RPKM.nc.tsv
zcat 57epigenomes.RPKM.pc.gz > 57epigenomes.RPKM.pc.tsv
rm *.gz
cd ..

mkdir Liver
cd Liver
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K9ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E066-H3K36me3.fc.signal.bigwig
cd ..

mkdir Lung
cd Lung
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E096-H3K36me3.fc.signal.bigwig
cd ..

mkdir Ovary
cd Ovary
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-DNase.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E097-H3K36me3.fc.signal.bigwig 
cd ..

mkdir Pancreas
cd Pancreas
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-DNase.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E098-H3K36me3.fc.signal.bigwig 
cd ..

mkdir Thymus
cd Thymus
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E112-H3K36me3.fc.signal.bigwig
cd ..

mkdir Spleen
cd Spleen
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K4me1.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K4me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K9me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K27ac.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K27me3.fc.signal.bigwig
wget -c http://egg2.wustl.edu/roadmap/data/byFileType/signal/consolidated/macs2signal/foldChange/E113-H3K36me3.fc.signal.bigwig
cd ..
