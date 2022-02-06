# ICGC Data
# https://dcc.icgc.org/
# Select data types to download: Sequence-based Gene Expression
# Convert ENSEMBL to SYMBOL

# ICGC-Breast Cancer - Very young women
library(dplyr)
BRCA_KR=read.table('Breast Cancer - Very young women', sep ='\t', head=T)
A=unique(BRCA_KR$icgc_donor_id)
A=as.character(A)
EX<-BRCA_KR[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:50){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:51] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Breast Cancer - Very young women.csv')

# ICGC-Malignant Lymphoma - DE
MALY_DE=read.table('Malignant Lymphoma - DE', sep ='\t', head=T)
A=unique(MALY_DE$icgc_donor_id)
A=as.character(A)
EX<-MALY_DE[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:105){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:106] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Malignant Lymphoma - DE.csv')

# ICGC-Oral Cancer - IN
ORCA_IN=read.table('Oral Cancer - IN', sep ='\t', head=T)
A=unique(ORCA_IN$icgc_donor_id)
A=as.character(A)
EX<-ORCA_IN[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:40){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:41] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Oral Cancer - IN.csv')

# ICGC-Renal Cell Cancer - EUFR
RECA_EU=read.table('Renal Cell Cancer - EUFR', sep ='\t', head=T)
A=unique(RECA_EU$icgc_donor_id)
A=as.character(A)
EX<-RECA_EU[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:91){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:92] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'D:/raw_count_TCGA/ICGC/Renal Cell Cancer - EUFR.csv')

# ICGC-Ovarian Cancer - AU
OV_AU=read.table('Ovarian Cancer - AU', sep ='\t', head=T)
A=unique(OV_AU$icgc_donor_id)
A=as.character(A)
EX<-OV_AU[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:93){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:94] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Ovarian Cancer - AU.csv')

# ICGC-Pancreatic Cancer - AU
PACA_AU=read.table('Pancreatic Cancer - AU', sep ='\t', head=T)
A=unique(PACA_AU$icgc_donor_id)
A=as.character(A)
EX<-PACA_AU[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:91){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:92] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Pancreatic Cancer - AU.csv')

# ICGC-Prostate Cancer - Adenocarcinoma
PRAD_FR=read.table('Prostate Cancer - Adenocarcinoma', sep ='\t', head=T)
A=unique(PRAD_FR$icgc_donor_id)
A=as.character(A)
EX<-PRAD_FR[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:25){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:26] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Prostate Cancer - Adenocarcinoma.csv')

# ICGC-Soft Tissue cancer - Ewing sarcoma - FR
BOCA_FR=read.table('Soft Tissue cancer - Ewing sarcoma - FR', sep ='\t', head=T)
A=unique(BOCA_FR$icgc_donor_id)
A=as.character(A)
EX<-BOCA_FR[,c(1,8,10)]
df <- EX %>% filter(icgc_donor_id == A[1])
df<-df[,c(2,3)]
for (i in 2:57){
  ABC<-EX %>% filter(icgc_donor_id == A[i])
  q <-ABC[,c(2,3)]
  colnames(q)<-c("gene_id",paste("sample_",i,sep = ""))
  df <- merge(df,q,by='gene_id',all=T)
  df <- aggregate(. ~gene_id , data = df, median)
}
colnames(df)[2:58] <- A
rownames(df) <- df$gene_id
df <- df[,-1]
write.csv(df,'./Soft Tissue cancer - Ewing sarcoma - FR.csv')

# Convert ENSEMBL to SYMBOL

# Malignant Lymphoma - DE
library(readr)
MALY_DE <- read_csv("Malignant Lymphoma - DE.csv")
MALY_DE <- as.data.frame(MALY_DE)
MALY_DE$gene_id<-substr(MALY_DE$gene_id, 1, 15)
eg2 = bitr(MALY_DE$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
MALY_DE<-merge(MALY_DE,eg2 ,by='gene_id')
rownames(MALY_DE) <- MALY_DE$SYMBOL
MALY_DE <- MALY_DE[,-1]
MALY_DE <- aggregate(. ~SYMBOL , data = MALY_DE, median)
rownames(MALY_DE)<-MALY_DE$SYMBOL
MALY_DE <- MALY_DE[,-1]
write.csv(MALY_DE, "./Malignant Lymphoma - DE.csv")

# Renal Cell Cancer - EUFR ####
RECA_EU <- read_csv("Renal Cell Cancer - EUFR.csv")
RECA_EU <- as.data.frame(RECA_EU)
eg2 = bitr(RECA_EU$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
RECA_EU<-merge(RECA_EU,eg2 ,by='gene_id')
rownames(RECA_EU) <- RECA_EU$SYMBOL
RECA_EU <- RECA_EU[,-1]
RECA_EU <- aggregate(. ~SYMBOL , data = RECA_EU, median)
rownames(RECA_EU)<-RECA_EU$SYMBOL
RECA_EU <- RECA_EU[,-1]
write.csv(RECA_EU, "./Renal Cell Cancer - EUFR.csv")

# OV = Ovarian Cancer - AU#
OV_AU <- read_csv("Ovarian Cancer - AU.csv")
OV_AU <- as.data.frame(OV_AU)
eg2 = bitr(OV_AU$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
OV_AU<-merge(OV_AU,eg2 ,by='gene_id')
rownames(OV_AU) <- OV_AU$SYMBOL
OV_AU <- OV_AU[,-1]
OV_AU <- aggregate(. ~SYMBOL , data = OV_AU, median)
rownames(OV_AU)<-OV_AU$SYMBOL
OV_AU <- OV_AU[,-1]
write.csv(OV_AU, "./Ovarian Cancer - AU.csv")

# Pancreatic Cancer - AU
PACA_AU <- read_csv("Pancreatic Cancer - AU.csv")
PACA_AU <- as.data.frame(PACA_AU)
eg2 = bitr(PACA_AU$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
PACA_AU<-merge(PACA_AU,eg2 ,by='gene_id')
rownames(PACA_AU) <- PACA_AU$SYMBOL
PACA_AU <- PACA_AU[,-1]
PACA_AU <- aggregate(. ~SYMBOL , data = PACA_AU, median)
rownames(PACA_AU)<-PACA_AU$SYMBOL
PACA_AU <- PACA_AU[,-1]
write.csv(PACA_AU, "./Pancreatic Cancer - AU.csv")

# Prostate Cancer - Adenocarcinoma
PRAD_FR <- read_csv("Prostate_Cancer_Adenocarcinoma.csv")
PRAD_FR <- as.data.frame(PRAD_FR)
eg2 = bitr(PRAD_FR$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
PRAD_FR<-merge(PRAD_FR,eg2 ,by='gene_id')
rownames(PRAD_FR) <- PRAD_FR$SYMBOL
PRAD_FR <- PRAD_FR[,-1]
PRAD_FR <- aggregate(. ~SYMBOL , data = PRAD_FR, median)
rownames(PRAD_FR)<-PRAD_FR$SYMBOL
PRAD_FR <- PRAD_FR[,-1]
write.csv(PRAD_FR, "./Prostate Cancer - Adenocarcinoma.csv")

# Soft Tissue cancer - Ewing sarcoma - FR
BOCA_FR <- read_csv("D:/raw_count_TCGA/ICGC/Soft Tissue cancer - Ewing sarcoma - FR.csv")
BOCA_FR <- as.data.frame(BOCA_FR)
eg2 = bitr(BOCA_FR$gene_id, fromType="ENSEMBL", toType="SYMBOL", OrgDb="org.Hs.eg.db") ####ENSEMBLTRANS(Pediatric Brain Tumor - Multiple subtypes)##
colnames(eg2) <- c("gene_id","SYMBOL")
BOCA_FR<-merge(BOCA_FR,eg2 ,by='gene_id')
rownames(BOCA_FR) <- BOCA_FR$SYMBOL
BOCA_FR <- BOCA_FR[,-1]
BOCA_FR <- aggregate(. ~SYMBOL , data = BOCA_FR, median)
rownames(BOCA_FR)<-BOCA_FR$SYMBOL
BOCA_FR <- BOCA_FR[,-1]
write.csv(BOCA_FR, "./Soft Tissue cancer - Ewing sarcoma - FR.csv")