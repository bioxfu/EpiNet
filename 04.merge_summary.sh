cd Liver
grep -v '#' E066-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E066-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E066-H3K9ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9ac
grep -v '#' E066-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E066-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E066-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E066-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9ac\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3" > liver_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9ac tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 >> liver_bin_signal.tsv
rm tmp*
cd ..

cd Lung
grep -v '#' E096-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E096-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E096-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E096-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E096-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E096-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3" > lung_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 >> lung_bin_signal.tsv
rm tmp*
cd ..

cd Ovary
grep -v '#' E097-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E097-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E097-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E097-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E097-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E097-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
grep -v '#' E097-DNase.fc.signal.bigwig.summary|cut -f11|tr '_', '\t' > tmp.DNase
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3\tDNase" > ovary_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 tmp.DNase >> ovary_bin_signal.tsv
rm tmp*
cd ..

cd Pancreas
grep -v '#' E098-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E098-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E098-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E098-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E098-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E098-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
grep -v '#' E098-DNase.fc.signal.bigwig.summary|cut -f11|tr '_', '\t' > tmp.DNase
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3\tDNase" > pancreas_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 tmp.DNase >> pancreas_bin_signal.tsv
rm tmp*
cd ..

cd Spleen
grep -v '#' E113-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E113-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E113-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E113-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E113-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E113-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3" > spleen_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 >> spleen_bin_signal.tsv
rm tmp*
cd ..

cd Thymus
grep -v '#' E112-H3K4me1.fc.signal.bigwig.summary|cut -f4,11|tr '_', '\t' > tmp.H3K4me1
grep -v '#' E112-H3K4me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K4me3
grep -v '#' E112-H3K9me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K9me3
grep -v '#' E112-H3K27ac.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27ac
grep -v '#' E112-H3K27me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K27me3
grep -v '#' E112-H3K36me3.fc.signal.bigwig.summary|cut -f11 > tmp.H3K36me3
echo -e "gene\tbin\tH3K4me1\tH3K4me3\tH3K9me3\tH3K27ac\tH3K27me3\tH3K36me3" > thymus_bin_signal.tsv
paste tmp.H3K4me1 tmp.H3K4me3 tmp.H3K9me3 tmp.H3K27ac tmp.H3K27me3 tmp.H3K36me3 >> thymus_bin_signal.tsv
rm tmp*
cd ..

