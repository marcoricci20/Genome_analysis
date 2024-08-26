library("DESeq2")
directory <-"C:/Users/UTENTE/Dropbox/Master_Bioinformatica/Genome_analysis/Laboratorio/tutorial/DESeq2.htm/diff_expression/excel"
setwd(directory)
# Specifico le classi delle colonne:

cts <- read.table("Count_data.csv", header = TRUE,sep = ",",stringsAsFactors = T) 
rownames(cts)= cts[,1]
cts = cts[,-1]

coldata <- read.table("coldata.csv", header = TRUE, sep = ",",stringsAsFactors = T,)
rownames(coldata)=coldata[,1]
coldata = coldata[,-1]

# Visualizzo i dati importati

dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design= ~ batch + condition)
dds <- DESeq(dds)

res <- results(dds)

res
#######
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("apeglm")

library("apeglm")
resLFC <- lfcShrink(dds, coef="condition_Serum_vs_BH", type="apeglm")

plotMA(res, ylab = "Log-fold change, Serum vs BH", alpha = 0.01)
abline(h = 1, col = "red")
abline(h = -1,col = "red")

plotMA(resLFC, ylab = "Log-fold change, Serum vs BH")


#dds <- DESeqDataSetFromMatrix(countData <- read.table("Count_data.csv", header = TRUE,sep = ",",stringsAsFactors = T)
#                              colData   <- <- read.table("coldata.csv", header = TRUE, sep = ",",stringsAsFactors = T)
#                              design= ~ batch + condition)
#dds <- DESeq(dds)
#resultsNames(dds) # lists the coefficients
#res <- results(dds, name="condition_trt_vs_untrt")
# or to shrink log fold changes association with condition:
#res <- lfcShrink(dds, coef="condition_trt_vs_untrt", type="apeglm")