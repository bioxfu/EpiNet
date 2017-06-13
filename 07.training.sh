python EpiNet.py Liver/liver_bin_signal.npy Liver/liver_gene_expr_binary_class.tsv > Liver/liver_model_output
python EpiNet.py Lung/lung_bin_signal.npy Lung/lung_gene_expr_binary_class.tsv > Lung/lung_model_output
python EpiNet.py Ovary/ovary_bin_signal.npy Ovary/ovary_gene_expr_binary_class.tsv > Ovary/ovary_model_output
python EpiNet.py Pancreas/pancreas_bin_signal.npy Pancreas/pancreas_gene_expr_binary_class.tsv > Pancreas/pancreas_model_output
python EpiNet.py Spleen/spleen_bin_signal.npy Spleen/spleen_gene_expr_binary_class.tsv > Spleen/spleen_model_output
python EpiNet.py Thymus/thymus_bin_signal.npy Thymus/thymus_gene_expr_binary_class.tsv > Thymus/thymus_model_output

cat */*output|grep 'AUC'