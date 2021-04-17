# No need to install these packages on Binder
# install.packages("BiocManager")
# BiocManager::install("DESeq2")
# BiocManager::install("EnhancedVolcano")


library("DESeq2")
library("ggplot2")
library("EnhancedVolcano")

directory <- "./HTSEQ/STAR37/"

sampleFiles <- list.files(directory)
sampleCondition <- sub("_\\d.tab","",sampleFiles)
samples <- data.frame(sampleName = sampleFiles,
                           run = sampleFiles,
                           condition = sampleCondition)
run <- as.vector(samples$run)
head(samples)

write.csv(as.data.frame(samples),
          file="output/Experimental_design.csv")


ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = samples,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq


keep <- rowSums(counts(ddsHTSeq)) >= 10
ddsHTSeq <- ddsHTSeq[keep,]

raw_counts <- data.frame(counts(ddsHTSeq))
write.csv(as.data.frame(raw_counts),
          file="output/Rawcounts.csv", col.names = TRUE)

vsd <- vst(ddsHTSeq, blind=FALSE)
head(assay(vsd), 3)

plotPCA(vsd, intgroup=c("condition")) + geom_text(aes(label=name), vjust=2)
ggsave("output/PCA.pdf", width=8, height=5)

write.csv(as.data.frame(assay(vsd)),
          file="output/Normalized_counts.csv")
ddsHTSeq$condition <- relevel(ddsHTSeq$condition, ref = "Control")

ddsHTSeq <- DESeq(ddsHTSeq)
res <- results(ddsHTSeq)
res
resOrdered <- res[order(res$pvalue),]
resOrdered

write.csv(as.data.frame(resOrdered),
          file="output/DEG_Results.csv")


EnhancedVolcano(res,
                lab = rownames(res),
                x = 'log2FoldChange',
                y = 'pvalue',
                xlim = c(-5, 8))
