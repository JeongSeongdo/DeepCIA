# Extraction of gene values corresponding to 1462 TF list
# TCGA 8Cancer 

# BRCA
BRCA=read.csv('BRCA.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(BRCA$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_BRCA1102.csv')

# DLBC
DLBC=read.csv('DLBC.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(DLBC$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_DLBC48.csv')

# HNSC
HNSC=read.csv('HNSC.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(HNSC$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_HNSC500.csv')

# KIRC
KIRC=read.csv('KIRC.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(KIRC$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_KIRC538.csv')

# OV
OV=read.csv('OV.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(OV$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_OV374.csv')

# PAAD
PAAD=read.csv('PAAD.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(PAAD$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_PAAD177.csv')

# PRAD
PRAD=read.csv('PRAD.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(PRAD$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_PRAD498.csv')

# PRAD
SARC=read.csv('SARC.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(SARC$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./TCGA_TF1462_SARC259.csv')