# Extraction of gene values corresponding to 1462 TF list
# ICGC 8Cancer 

# Breast Cancer - Very young women
BRCA-KR=read.csv('Breast Cancer - Very young women.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(BRCA-KR$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_BRCA_KR50.csv')

# Malignant Lymphoma - DE
MALY-DE=read.csv('Malignant Lymphoma - DE.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(MALY-DE$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_MALY_DE105.csv')

# Oral Cancer - IN
ORCA-IN=read.csv('Oral Cancer - IN.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(ORCA-IN$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_RECA_EU91.csv')

# Renal Cell Cancer - EUFR
RECA-EU=read.csv('Renal Cell Cancer - EUFR.csv', header = T)
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(RECA-EU$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_RECA_EU.csv')

# Ovarian Cancer - AU
OV-AU=read.csv('Ovarian Cancer - AU.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(OV-AU$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_OV_AU93.csv')

# Pancreatic Cancer - AU
PACA-AU=read.csv('Pancreatic Cancer - AU.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(PACA-AU$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_PACA_AU91.csv')

# Prostate Cancer - Adenocarcinoma
PRAD-FR=read.csv('Prostate Cancer - Adenocarcinoma.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(PRAD-FR$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_PRAD_FR25.csv')

# Soft Tissue cancer - Ewing sarcoma - FR
BOCA-FR=read.csv('Soft Tissue cancer - Ewing sarcoma - FR.csv', header = T) 
TF_label=read.csv("TF_1462_index.csv",header = F)
a<-which(BOCA-FR$gene_id %in% TF_label$V1)
re<-TF_label[a,]
rownames(re) <- TF_label$gene_id[a]
write.csv(re,'./ICGC_TF1462_BOCA_FR57.csv')