library('TCGAbiolinks')
library('DT')
library(SummarizedExperiment)


# Gene expression aligned against hg38
# TCGA 8Cancer Data (TCGA-BRCA, TCGA-DLBC, TCGA-SARC, TCGA_HNSC, TCGA_PAAD, TCGA_KIRC, TCGA_PRAD, TCGA_OV )
query <- GDCquery(project = "TCGA-BRCA",  
                  data.category = "Transcriptome Profiling",
                  data.type = "Gene Expression Quantification", 
                  workflow.type = "HTSeq - Counts")

GDCdownload(query)
data <- GDCprepare(query)

# TCGA_BRCA
q<-which(data@colData$sample_type == "Primary Tumor")

df_BRCA <- as.data.frame(assay(data))
df_BRCA <- df_BRCA[,q]
df_BRCA$gene <- data@rowRanges$external_gene_name
df_BRCA <- aggregate(. ~gene , data = df_BRCA, median)
rownames(df_BRCA) <- df_BRCA$gene
df_BRCA <- df_BRCA[,-1]
write.csv(df_BRCA,file= './BRCA.csv')


# TCGA-DLBC
q<-which(data@colData$sample_type == "Primary Tumor")

df_DLBC <- as.data.frame(assay(data))
df_DLBC$gene <- data@rowRanges$external_gene_name
df_DLBC <- aggregate(. ~gene , data = df_DLBC, median)
rownames(df_DLBC) <- df_DLBC$gene
df_DLBC <- df_DLBC[,-1]
write.csv(df_DLBC,file= './DLBC.csv')


# TCGA_HNSC
q<-which(data@colData$sample_type == "Primary Tumor")

df_HNSC <- as.data.frame(assay(data))
df_HNSC <- df_HNSC[,q]
df_HNSC$gene <- data@rowRanges$external_gene_name
df_HNSC <- aggregate(. ~gene , data = df_HNSC, median)
rownames(df_HNSC) <- df_HNSC$gene
df_HNSC <- df_HNSC[,-1]
write.csv(df_HNSC,file= './HNSC.csv')


# TCGA_KIRC
q<-which(data@colData$sample_type == "Primary Tumor")

df_KIRC <- as.data.frame(assay(data))
df_KIRC <- df_KIRC[,q]
df_KIRC$gene <- data@rowRanges$external_gene_name
df_KIRC <- aggregate(. ~gene , data = df_KIRC, median)
rownames(df_KIRC) <- df_KIRC$gene
df_KIRC <- df_KIRC[,-1]
write.csv(df_KIRC,file= './KIRC.csv')

# TCGA_OV
q<-which(data@colData$sample_type == "Primary Tumor")

df_OV <- as.data.frame(assay(data))
df_OV <- df_OV[,q]
df_OV$gene <- data@rowRanges$external_gene_name
df_OV <- aggregate(. ~gene , data = df_OV, median)
rownames(df_OV) <- df_OV$gene
df_OV <- df_OV[,-1]
write.csv(df_OV,file= './OV.csv')

#TCGA_PAAD
q<-which(data@colData$sample_type == "Primary Tumor")

df_PAAD <- as.data.frame(assay(data))
df_PAAD <- df_PAAD[,q]
df_PAAD$gene <- data@rowRanges$external_gene_name
df_PAAD <- aggregate(. ~gene , data = df_PAAD, median)
rownames(df_PAAD) <- df_PAAD$gene
df_PAAD <- df_PAAD[,-1]
write.csv(df_PAAD,file= './PAAD.csv')

# TCGA_PRAD
q<-which(data@colData$sample_type == "Primary Tumor")

df_PRAD <- as.data.frame(assay(data))
df_PRAD <- df_PRAD[,q]
df_PRAD$gene <- data@rowRanges$external_gene_name
df_PRAD <- aggregate(. ~gene , data = df_PRAD, median)
rownames(df_PRAD) <- df_PRAD$gene
df_PRAD <- df_PRAD[,-1]
write.csv(df_PRAD,file= './PRAD.csv')

# TCGA-SARC
q<-which(data@colData$sample_type == "Primary Tumor")

df_SARC <- as.data.frame(assay(data))
df_SARC <- df_SARC[,q]
df_SARC$gene <- data@rowRanges$external_gene_name
df_SARC <- aggregate(. ~gene , data = df_SARC, median)
rownames(df_SARC) <- df_SARC$gene
df_SARC <- df_SARC[,-1]
write.csv(df_SARC,file= './SARC.csv')



