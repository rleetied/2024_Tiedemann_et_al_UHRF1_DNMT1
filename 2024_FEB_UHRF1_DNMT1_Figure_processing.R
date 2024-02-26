#load libraries needed
library(sesame)
library(ggplot2)
library(dplyr)
library(data.table)
library(pheatmap)
library(RColorBrewer)
library(colorRamps)

##### FIGURE 1 #####
#Code required for processing and visualization of data presented in Figure 1
#For each subpanel:
#PROCESSING = denotes the code used for processing and analyzing the DNA methylation data;
#VISUALIZATION = denotes the code used for visualization following processing and analysis

####Figure 1B
#PROCESSING
#sesame processing of idat files to calculate beta-values for data presented in Figure 1B-E

#setwd("~/Desktop/VAI/Retreat_folder_analysis/idats/")
setwd("~/directory_with_Illumina_EPIC_idat_files/")

IDATprefixes <- searchIDATprefixes("~/directory_with_Illumina_EPIC_idat_files/", 
                                   recursive = TRUE, use.basename = TRUE)

betas <- openSesame(IDATprefixes)

colnames(betas) <- c("Cl6_ND",
                     "Cl6_Dox",
                     "Cl3_U1_ND",
                     "Cl3_U1_Dox",
                     "shU1_bulk_ND",
                     "shU1_bulk_Dox",
                     "shD1_R1_ND",
                     "shD1_R1_Dox",
                     "shD1_R2_ND",
                     "shD1_R2_Dox",
                     "Cl9_ND",
                     "Cl9_Dox",
                     "Cl3_D1_ND",
                     "Cl3_D1_Dox",
                     "Cl8_ND",
                     "Cl8_Dox")


#separate out UHRF1 and DNMT1 samples into different data.frames for downstream analysis
UHRF1.betas <- betas[,c(1:6,11,12)]
DNMT1.betas <- betas[,c(7:10,13:16)]

UHRF1.betas.df <- data.frame(UHRF1.betas)
UHRF1.betas.df <- UHRF1.betas.df[complete.cases(UHRF1.betas.df),]

DNMT1.betas.df <- data.frame(DNMT1.betas)
DNMT1.betas.df <- DNMT1.betas.df[complete.cases(DNMT1.betas.df),]

UHRF1.betas.df <- cbind(rownames(UHRF1.betas.df), data.frame(UHRF1.betas.df), row.names = NULL)
colnames(UHRF1.betas.df) <- c("probeID",
                              "Cl6_ND",
                              "Cl6_Dox",
                              "Cl3_ND",
                              "Cl3_Dox",
                              "Bulk_ND",
                              "Bulk_Dox",
                              "Cl9_ND",
                              "Cl9_Dox")


DNMT1.betas.df <- cbind(rownames(DNMT1.betas.df), data.frame(DNMT1.betas.df), row.names = NULL)
colnames(DNMT1.betas.df) <- c("probeID",
                              "Bulk_R1_ND",
                              "Bulk_R1_Dox",
                              "Bulk_R2_ND",
                              "Bulk_R2_Dox",
                              "Cl3_ND",
                              "Cl3_Dox",
                              "Cl8_ND",
                              "Cl8_Dox")


#VISUALIZATION
#Top panel
#density plots of all EPIC CpG probes that pass p-value detection value < 0.05
#example code using shUHRF1 Clone 6. The same code was used for all samples presented in the figure.

plot(density(UHRF1.betas.df$Cl6_ND), col = "black", lty = 1, lwd = 2, xlim = c(0,1), ylim = c(0,9)) 
lines(density(UHRF1.betas.df$Cl6_Dox), col = "red", lty = 1, lwd = 2, xlim = c(0,1))

#Bottom panel
#density_scatterplots of all EPIC CpG probes that pass p-value detection threshold < 0.05
#example code using shUHRF1 Clone 6. The same code was used for all samples presented in the figure.

p <- ggplot(UHRF1.betas.df, aes(x=Cl6_ND, y=Cl6_Dox)) +
  geom_bin2d(bins = 500) +
  theme_bw() +
  scale_fill_viridis_c(option = "magma", trans = "log10") +
  xlim(0,1) +
  ylim(0,1)

####Figure 1C
#PROCESSING 
#Determine number of CpGs with hypomethylation at different Db-cutoffs
#merge datasets with custom manifest file for EPIC array containing genomic coordinates for each CpG, Genomic Annoation, CpG Island Annotation, #CpGs (+/-35 bp), CpG Context (SCGW), and CpG Density
UHRF1.betas.df.ann <- join(x = UHRF1.betas.df, y = manifest, by = "probeID")
UHRF1.betas.df.ann <- mutate(UHRF1.betas.df.ann, distance.abbr = if_else(UHRF1.betas.df.ann$distance.to.next.CpG < 20, "high","low"))

DNMT1.betas.df.ann <- join(x = DNMT1.betas.df, y = manifest, by = "probeID")
DNMT1.betas.df.ann <- mutate(DNMT1.betas.df.ann, distance.abbr = if_else(DNMT1.betas.df.ann$distance.to.next.CpG < 20, "high","low"))

#Calculate change in methylation from NoDox (Db-value (Knockdown))
UHRF1.betas.df.ann <- mutate(UHRF1.betas.df.ann, Cl6_dB = Cl6_Dox - Cl6_ND)
UHRF1.betas.df.ann <- mutate(UHRF1.betas.df.ann, Cl3_dB = Cl3_Dox - Cl3_ND)
UHRF1.betas.df.ann <- mutate(UHRF1.betas.df.ann, Cl9_dB = Cl9_Dox - Cl9_ND)
UHRF1.betas.df.ann <- mutate(UHRF1.betas.df.ann, Bulk_dB = Bulk_Dox - Bulk_ND)

DNMT1.betas.df.ann <- mutate(DNMT1.betas.df.ann, Bulk_R1_dB = Bulk_R1_Dox - Bulk_R1_ND)
DNMT1.betas.df.ann <- mutate(DNMT1.betas.df.ann, Bulk_R2_dB = Bulk_R2_Dox - Bulk_R2_ND)
DNMT1.betas.df.ann <- mutate(DNMT1.betas.df.ann, Cl3_dB = Cl3_Dox - Cl3_ND)
DNMT1.betas.df.ann <- mutate(DNMT1.betas.df.ann, Cl8_dB = Cl8_Dox - Cl8_ND)

#Determine number of CpGs with different Db-value threshold cut-offs
#example code using shUHRF1 Clone 6. The same code was used for all shUHRF1 and shDNMT1 samples.
#To determine differential methylation, we first isolated all the highly methylated CpGs from Baseline
Cl6.high_methyl <- subset(UHRF1.betas.df.ann, Cl6_ND >= 0.85) #CpG is methylated in ~85% of isolated cellular population

Cl6.dB_0.5 <- subset(Cl6.high_methyl, Cl6_dB <= -0.5) #isolates CpG with Db-value <= 0.5
Cl6.dB_0.3 <- subset(Cl6.high_methyl, Cl6_dB <= -0.3) #isolates CpG with Db-value <= 0.3
Cl6.dB_0.2 <- subset(Cl6.high_methyl, Cl6_dB <= -0.2) #isolates CpG with Db-value <= 0.2

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 1D
#PROCESSING
#example code using shUHRF1 Clone 6. The same code was used for all shUHRF1 and shDNMT1 samples.
#Calculating number of probes with particular annotation/feature groups for enrichment bias analysis

#Clone 6
#high_methyl
#save all annotation/feature count tables in sample specific directories
#First, isolate and count all highly methylated CpGs in the Clone 6 NoDox (Baseline sample) as these counts will be used for normalization:
setwd("~/EPIC/tables/Clone6/high_methyl")

Cl6.high_methyl <- subset(UHRF1.betas.df.ann, Cl6_ND >= 0.85) #CpG is methylated in ~85% of isolated cellular population

annotation <- table(Cl6.high_methyl$Annotation) #Genomic Annotation
CGI.annotation <- table(Cl6.high_methyl$CGI_annotation) #CpG Island Annotation
content.WZ <- table(Cl6.high_methyl$WZ.content) #CpGs (+/- 35 bp)
context <- table(Cl6.high_methyl$context) #Flanking nucleotide context, S = C/G, W = A/T
distance <- table(Cl6.high_methyl$dist_abbr) #CpG density, low-density >= 20 bp away, high-density < 20 bp away

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#Next, isolate and count all the differentially methylated CpGs in the Clone 6 +Dox (Knockdown sample):
#differential methylation
setwd("~/EPIC/tables/Clone6/dB_0.3/")
Cl6.dB_0.3 <- subset(Cl6.high_methyl, Cl6_dB <= -0.3) #isolates CpG with Db-value <= 0.3 (~30% loss in DNA methylation)

annotation <- table(Cl6.dB_0.3$Annotation)
CGI.annotation <- table(Cl6.dB_0.3$CGI_annotation)
content.WZ <- table(Cl6.dB_0.3$WZ.content)
context <- table(Cl6.dB_0.3$context)
distance <- table(Cl6.dB_0.3$dist_abbr)

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#Counts for high-methyl (distribution for normalization) and differential methylation are put into an Excel file.
#that is designed to auto-populate the enrichment bias statistics for each category.

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 1E
#PROCESSING
#UHRF1 average dB for normalization calculation 
dB <- UHRF1.betas.df.ann[,c(1:9,13,28,31:37)]  #isolate dB columns for all samples

Bulk_UHRF1 <- dB[,c(1,6,7,10,11,12,13,14,18)]
Bulk_UHRF1_high <- subset(Bulk_UHRF1, Bulk_ND >= 0.85) 
Bulk_UHRF1_high_low <- subset(Bulk_UHRF1_high, distance == "low") 
Bulk_UHRF1_high_high <- subset(Bulk_UHRF1_high, distance == "high")

Cl3_UHRF1 <- dB[,c(1,4,5,10,11,12,13,14,16)]
Cl3_UHRF1_high <- subset(Cl3_UHRF1, Cl3_ND >= 0.85) 
Cl3_UHRF1_high_low <- subset(Cl3_UHRF1_high, distance == "low") 
Cl3_UHRF1_high_high <- subset(Cl3_UHRF1_high, distance == "high") 

Cl6_UHRF1 <- dB[,c(1,2,3,10,11,12,13,14,15)]
Cl6_UHRF1_high <- subset(Cl6_UHRF1, Cl6_ND >= 0.85) 
Cl6_UHRF1_high_low <- subset(Cl6_UHRF1_high, distance == "low") 
Cl6_UHRF1_high_high <- subset(Cl6_UHRF1_high, distance == "high")

Cl9_UHRF1 <- dB[,c(1,8,9,10,11,12,13,14,17)]
Cl9_UHRF1_high <- subset(Cl9_UHRF1, Cl9_ND >= 0.85) 
Cl9_UHRF1_high_low <- subset(Cl9_UHRF1_high, distance == "low") 
Cl9_UHRF1_high_high <- subset(Cl9_UHRF1_high, distance == "high")

#DNMT1 average dB for normalization calculation
dB <- DNMT1.betas.df.ann[,c(1:9,13,28,31:37)]

Bulk_DNMT1_R1 <- dB[,c(1,2,3,10,11,12,13,14,15)]
Bulk_DNMT1__R1_high <- subset(Bulk_DNMT1_R1, Bulk_R1_ND >= 0.85) 
Bulk_DNMT1__R1_high_low <- subset(Bulk_DNMT1__R1_high, distance.abbr == "low") 
Bulk_DNMT1__R1_high_high <- subset(Bulk_DNMT1__R1_high, distance.abbr == "high") 

Bulk_DNMT1_R2 <- dB[,c(1,4,5,10,11,12,13,14,16)]
Bulk_DNMT1__R2_high <- subset(Bulk_DNMT1_R2, Bulk_R2_ND >= 0.85) 
Bulk_DNMT1__R2_high_low <- subset(Bulk_DNMT1__R2_high, distance.abbr == "low") 
Bulk_DNMT1__R2_high_high <- subset(Bulk_DNMT1__R2_high, distance.abbr == "high") 

Cl3_DNMT1 <- dB[,c(1,6,7,10,11,12,13,14,17)]
Cl3_DNMT1_high <- subset(Cl3_DNMT1, Cl3_ND >= 0.85) 
Cl3_DNMT1_high_low <- subset(Cl3_DNMT1_high, distance.abbr == "low") 
Cl3_DNMT1_high_high <- subset(Cl3_DNMT1_high, distance.abbr == "high") 

Cl8_DNMT1 <- dB[,c(1,8,9,10,11,12,13,14,18)]
Cl8_DNMT1_high <- subset(Cl8_DNMT1, Cl8_ND >= 0.85) 
Cl8_DNMT1_high_low <- subset(Cl8_DNMT1_high, distance.abbr == "low") 
Cl8_DNMT1_high_high <- subset(Cl8_DNMT1_high, distance.abbr == "high") 

#VISUALIZATION
#calculated CpG density preference values were input into GraphPad PRISM v10.1.1

####Figure 1F
#PROCESSING
setwd("~/directory_with_Illumina_EPIC_idat_files/")

IDATprefixes <- searchIDATprefixes("~/directory_with_Illumina_EPIC_idat_files/", 
                                   recursive = TRUE, use.basename = TRUE)

betas <- openSesame(IDATprefixes)

colnames(betas) <- c("NoDox",
                     "D7_Dox",
                     "D14_Dox",
                     "D2_Dox",
                     "D4_Dox")

betas.df <- data.frame(betas)
betas.df <- betas.df[complete.cases(betas.df),]


betas.df <- cbind(rownames(betas.df), data.frame(betas.df), row.names = NULL)
colnames(betas.df) <- c("probeID","NoDox",
                        "D7_Dox",
                        "D14_Dox",
                        "D2_Dox",
                        "D4_Dox")

betas.df.ann <- join(x = betas.df, y = manifest, by = "probeID")
betas.df.ann <- mutate(betas.df.ann, distance = if_else(betas.df.ann$distance.to.next.CpG < 20, "high","low"))

#Db-value calculation & rate of demethylation
betas.df.ann <- mutate(betas.df.ann, D2.dB = D2_Dox - NoDox)
betas.df.ann <- mutate(betas.df.ann, D4.dB = D4_Dox - NoDox)
betas.df.ann <- mutate(betas.df.ann, D7.dB = D7_Dox - NoDox)
betas.df.ann <- mutate(betas.df.ann, D14.dB = D14_Dox - NoDox)

betas.df.ann <- mutate(betas.df.ann, D2_rate = (D2_Dox - NoDox)/D14.dB)
betas.df.ann <- mutate(betas.df.ann, D4_rate = (D4_Dox - NoDox)/D14.dB)
betas.df.ann <- mutate(betas.df.ann, D7_rate = (D7_Dox - NoDox)/D14.dB)
betas.df.ann <- mutate(betas.df.ann, D14_rate = (D14_Dox - NoDox)/D14.dB)

rates <- subset(rates, NoDox >= 0.85 & D14.dB <= -0.3)

#VISUALIZATION
hist(rates$D2_rate, col = adjustcolor("goldenrod",alpha.f = 0.4), xlim = c(0,1), ylim = c(0,2000), axes = FALSE, breaks = 500, lty = "blank")
axis(1, at = seq(0,1,0.2), pos = 0)
axis(2, at = seq(0,2000,500),pos = 0)
hist(rates$D4_rate, col = adjustcolor("forestgreen",alpha.f = 0.4), add = T, breaks = 500, lty = "blank")
hist(rates$D7_rate, col = adjustcolor("blue", alpha.f = 0.4), add = T, breaks = 500, lty = "blank")
abline(v = 0.3284194, col = "goldenrod", lty = 2, lwd = 3)
abline(v = 0.5555363, col = "forestgreen", lty = 2, lwd = 3)
abline(v = 0.7688499, col = "blue", lty = 2, lwd = 3)

####Figure 1G
#PROCESSING
#Determine number of CpGs that are hypomethylated at the different time-points at varying Db-value cut-offs
Cl6.high_methyl <- subset(betas.df.ann, NoDox >= 0.85) #CpG is methylated in ~85% of isolated cellular population

Cl6.D4.dB_0.3 <- subset(Cl6.high_methyl, D4.dB <= -0.3) #isolates CpG with Db-value <= 0.3
Cl6.D4.dB_0.2 <- subset(Cl6.high_methyl, D4.dB <= -0.2) #isolates CpG with Db-value <= 0.2

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 1H
#PROCESSING
#Calculating number of probes with particular annotation groups for enrichment bias analysis
#save all annotation/feature count tables in dB-specific directories
#First, isolate and count all highly methylated CpGs in the Clone 6 NoDox (Baseline sample) as these counts will be used for normalization:
setwd("~/EPIC/tables/Clone6/time-course/high_methyl")

Cl6.high_methyl <- subset(betas.df.ann, NoDox >= 0.85) #CpG is methylated in ~85% of isolated cellular population

annotation <- table(Cl6.high_methyl$Annotation) #Genomic Annotation
CGI.annotation <- table(Cl6.high_methyl$CGI_annotation) #CpG Island Annotation
content.WZ <- table(Cl6.high_methyl$WZ.content) #CpGs (+/- 35 bp)
context <- table(Cl6.high_methyl$context) #Flanking nucleotide context, S = C/G, W = A/T
distance <- table(Cl6.high_methyl$dist_abbr) #CpG density, low-density >= 20 bp away, high-density < 20 bp away

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#Next, isolate and count all the differentially methylated CpGs in the different time-couse and dB-cut-off directories (Knockdown sample):
#differential methylation
setwd("~/EPIC/tables/Clone6/time-course/D4/dB_0.3/")
Cl6.D4.dB_0.3 <- subset(Cl6.high_methyl, D4.dB <= -0.3) #isolates CpG with Db-value <= 0.3 (~30% loss in DNA methylation)

annotation <- table(Cl6.D4.dB_0.3$Annotation)
CGI.annotation <- table(Cl6.D4.dB_0.3$CGI_annotation)
content.WZ <- table(Cl6.D4.dB_0.3$WZ.content)
context <- table(Cl6.D4.dB_0.3$context)
distance <- table(Cl6.D4.dB_0.3$dist_abbr)

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#Counts for high-methyl (distribution for normalization) and differential methylation are put into an Excel file
#that is designed to auto-populate the enrichment bias statistics for each category.

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 1I
#PROCESSING
#Melt data into format for ggplot2 geom_smooth()
dB <- betas.df.ann[,c(1:2,35:38,32:34,14)] #isolate dB values from all samples and the feature of interest to plot
dB <- subset(dB, NoDox >= 0.85)

colnames(dB) <- c("probeID","NoDox","D2.dB","D4.dB","D7.dB","D14.dB","distance.to.next.CpG")

melt_dB <- melt(dB, id.vars = c("probeID", "distance.to.next.CpG"),
                measure.vars = c("D2.dB","D4.dB","D7.dB","D14.dB"),
                value.name = "value")
melt_dB_50 <- subset(melt_dB, distance.to.next.CpG <= 50)

#VISUALIZATION
p <- ggplot(melt_dB_50, aes(x=distance.to.next.CpG, y=value, fill=variable)) +
  geom_smooth() +
  theme_bw() +
  coord_cartesian(ylim = c(-0.2,0))

#######WGBS processing for downstream analysis of data presented in Figure 1J-K
setwd("~/directory_with_compiled_WGBS_methylation_data/")

WGBS <- fread("WGBS.all_samples.annotated.repliseq.bed")
colnames(WGBS) <- c("chr","start","stop",
                    "Cl3_NoDox","Cl3_D14","Cl3_D28",
                    "Cl6_NoDox","Cl6_D14","Cl6_D28",
                    "Cl9_NoDox","Cl9_D14","Cl9_D28",
                    "shD1_R1_NoDox","shD1_R1_D14","shD1_R1_D28",
                    "shD1_R2_NoDox","shD1_R2_D14","shD1_R2_D28",
                    "chr_del","start_del","stop_del", "distance.to.next.CpG",
                    "chr_del2","start_del2","stop_del2","distance_del",
                    "chr_del3","start_del3","stop_del3","detailed_annotation",
                    "distance_to_TSS","REFSEQ","REFSEQ_Del","ENSG","ext_gene",
                    "unknown","biotype","Annotation","chr_CGI","start_CGI","stop_CGI",
                    "CGI_name","Distance_to_CGI","CGI_annotation","GC","CpG.content.35","WZ.content", "context","overlap","overlap_del",
                    "chr.repli","start.repli","stop.repli","repliseq_phase","no_data")

WGBS <- WGBS[,c(1:22,30:32,34,35,37:48,54)] #isolate columns of interest for downstream analysis
WGBS <- mutate(WGBS, dist_abbr = ifelse(distance.to.next.CpG < 20, "high","low"))

#calculating change in DNA methylation to NoDox
WGBS <- mutate(WGBS, Cl3_D14_dB = Cl3_D14 - Cl3_NoDox)
WGBS <- mutate(WGBS, Cl3_D28_dB = Cl3_D28 - Cl3_NoDox)

WGBS <- mutate(WGBS, Cl6_D14_dB = Cl6_D14 - Cl6_NoDox)
WGBS <- mutate(WGBS, Cl6_D28_dB = Cl6_D28 - Cl6_NoDox)

WGBS <- mutate(WGBS, Cl9_D14_dB = Cl9_D14 - Cl9_NoDox)
WGBS <- mutate(WGBS, Cl9_D28_dB = Cl9_D28 - Cl9_NoDox)

WGBS <- mutate(WGBS, shD1_R1_D14_dB = shD1_R1_D14 - shD1_R1_NoDox)
WGBS <- mutate(WGBS, shD1_R1_D28_dB = shD1_R1_D28 - shD1_R1_NoDox)

WGBS <- mutate(WGBS, shD1_R2_D14_dB = shD1_R2_D14 - shD1_R2_NoDox)
WGBS <- mutate(WGBS, shD1_R2_D28_dB = shD1_R2_D28 - shD1_R2_NoDox)

####Figure 1J
#PROCESSING
#save all annotation/feature count tables in sample specific directories
#First, isolate and count all highly methylated CpGs in the Clone 6 NoDox (Baseline sample) as these counts will be used for normalization:
#high_methyl
setwd("~/WGBS/tables/Clone6/high_methyl")
Clone6 <- subset(WGBS, Cl6_NoDox >= 0.85)

distance_all <- table(Clone6$distance.to.next.CpG)

write.table(distance_all, file = "distance_all.txt", quote = F, sep = "\t", col.names = F, row.names = F)

setwd("/~/WGBS/tables/Clone6/dB_0.3")

#differential methylation
Clone6 <- subset(WGBS, Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3)

distance_all <- table(Clone6$distance.to.next.CpG)

write.table(distance_all, file = "distance_all.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#Counts for high-methyl (distribution for normalization) and differential methylation are put into an Excel file
#that is designed to auto-populate the enrichment bias statistics for each category.

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 1K
#PROCESSING
#WGBS data set-up --- iterate through code for each sample
dB <- WGBS[,c(1:3,7:9,22,29,35,38:41,44,45)] #dBs Clone 6
dB <- WGBS[,c(1:3,4:6,22,29,35,38:41,42,43)] #dBs Clone 3
dB <- WGBS[,c(1:3,10:12,22,29,35,38:41,46,47)] #dBs Clone 9
dB <- WGBS[,c(1:3,13:15,22,29,35,38:41,48,49)] #dBs shDNMT1_R1
dB <- WGBS[,c(1:3,16:18,22,29,35,38:41,50,51)] #dBs shDNMT1_R2

#isolate all highly methylated CpGs for each sample
dB <- subset(dB, Cl6_NoDox >= 0.85) #15,493,329 CpGs
dB <- subset(dB, Cl3_NoDox >= 0.85) #15,398,368 CpGs
dB <- subset(dB, Cl9_NoDox >= 0.85) #14,900,218 CpGs
dB <- subset(dB, shD1_R1_NoDox >= 0.85) #14,569,374 CpGs
dB <- subset(dB, shD1_R2_NoDox >= 0.85) #14,733,414 CpGS

#data set-up
dB$coordinate <- paste0(dB$chr,":",dB$start)
dB <- dB[,c(4:16)]

colnames(dB) <- c("Cl6_NoDox","Cl6_D14","Cl6_D28","distance.to.next.CpG",
                  "Cl6_D14_dB","Cl6_D28_dB","coordinate")

melt_dB <- melt(dB, id.vars = c("distance.to.next.CpG","coordinate"),
                measure.vars = c("Cl6_D14_dB","Cl6_D28_dB"),
                value.name = "value")

#subsetting
melt_dB_100 <- subset(melt_dB, distance.to.next.CpG <= 100)

#####factor set-ups
melt_dB_100$distance.to.next.CpG <- factor(melt_dB_100$distance.to.next.CpG, levels = c("1","2","3","4","5","6","7","8","9","10","11","12",
                                                                                        "13","14","15","16","17","18","19","20","21","22",
                                                                                        "23","24","25","26","27","28","29","30","31","32",
                                                                                        "33","34","35","36","37","38","39","40","41","42",
                                                                                        "43","44","45","46","47","48","49","50","51","52","53",
                                                                                        "54","55","56","57","58","59","60","61","62","63","64",
                                                                                        "65","66","67","68","69","70","71","72","73","74","75",
                                                                                        "76","77","78","79","80","81","82","83","84","85","86",
                                                                                        "87","88","89","90","91","92","93","94","95","96","99","100"))

#VISUALIZATION
col <- colorRampPalette(c("papayawhip","darkslategray1","lightskyblue","gray48"))(100)

p <- ggplot(melt_dB_100, aes(x=variable, y=value, fill=distance.to.next.CpG)) +
  geom_boxplot(outlier.shape = NA) +
  theme_bw() +
  scale_fill_manual(values = col) +
  coord_cartesian(ylim = c(-1,0.1))

##### FIGURE 2 #####
#Code required for processing and visualization of data presented in Figure 2
#For each subpanel:
#PROCESSING = denotes the code used for processing and analyzing the DNA methylation data;
#VISUALIZATION = denotes the code used for visualization following processing and analysis

####Figure 2A
#PROCESSING
#isolate out mC-values to generate bigwigs for deeptools integration
#all_CpGs
Clone3_all <- WGBS[,c(1:6,55)]
Clone6_all <- WGBS[,c(1:3,7:9,55)]
Clone9_all <- WGBS[,c(1:3,10:12,55)]
shDNMT1_R1_all <- WGBS[,c(1:3,13:15,55)]
shDNMT1_R2_all <- WGBS[,c(1:3,16:18,55)]

write.table(Clone3_all, file = "Clone3_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone6_all, file = "Clone6_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone9_all, file = "Clone9_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R1_all, file = "shDNMT1_R1_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R2_all, file = "shDNMT1_R2_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#isolate out delta-mC-values to generate bigwigs for deeptools integration
Clone3_all <- WGBS[,c(1:3,40,55)]
Clone6_all <- WGBS[,c(1:3,42,55)]
Clone9_all <- WGBS[,c(1:3,44,55)]
shDNMT1_R1_all <- WGBS[,c(1:3,46,55)]
shDNMT1_R2_all <- WGBS[,c(1:3,48,55)]

write.table(Clone3_all, file = "Clone3_delta_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone6_all, file = "Clone6_delta_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone9_all, file = "Clone9_delta_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R1_all, file = "shDNMT1_R1_delta_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R2_all, file = "shDNMT1_R2_delta_beta_values_all_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#low-density CpGs
WGBS_low <- subset(WGBS, dist_abbr == "low")

Clone3_low <- WGBS_low[,c(1:6,55)]
Clone6_low <- WGBS_low[,c(1:3,7:9,55)]
Clone9_low <- WGBS_low[,c(1:3,10:12,55)]
shDNMT1_R1_low <- WGBS_low[,c(1:3,13:15,55)]
shDNMT1_R2_low <- WGBS_low[,c(1:3,16:18,55)]

write.table(Clone3_low, file = "Clone3_beta_values_low_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone6_low, file = "Clone6_beta_values_low_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone9_low, file = "Clone9_beta_values_low_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R1_low, file = "shDNMT1_R1_beta_values_low_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R2_low, file = "shDNMT1_R2_beta_values_low_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#high-density CpGs
WGBS_high <- subset(WGBS, dist_abbr == "high")

Clone3_high <- WGBS_high[,c(1:6,55)]
Clone6_high <- WGBS_high[,c(1:3,7:9,55)]
Clone9_high <- WGBS_high[,c(1:3,10:12,55)]
shDNMT1_R1_high <- WGBS_high[,c(1:3,13:15,55)]
shDNMT1_R2_high <- WGBS_high[,c(1:3,16:18,55)]

write.table(Clone3_high, file = "Clone3_beta_values_high_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone6_high, file = "Clone6_beta_values_high_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(Clone9_high, file = "Clone9_beta_values_high_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R1_high, file = "shDNMT1_R1_beta_values_high_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")
write.table(shDNMT1_R2_high, file = "shDNMT1_R2_beta_values_high_CpGs.bed", quote = F, row.names = F, col.names = F, sep = "\t")

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 2B
#PROCESSING
#analysis was done in deeptools. Please see 2024_FEB_UHRF1_ms_code.sh for associated code. 

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 2C
#PROCESSING
#Isolating consistent regions of histone PTM (H3K9me3/H3K27me3) in shUHRF1 Cl.6 & Cl.3 Baseline samples

#histone modifications processing; determining what peaks should be included in analysis (taken from Qian's EDD analysis)
setwd("~/Qians_K9me3_K27me3_processing/peaks/Cl6/H3K9me3")

#first bring in from doing intersection of coordinates with bedtools with -wo option

Clone6_K9_ND <- fread("C6ND_H3K9me3_shared_peaks.bed")
Clone6_K9_ND <- mutate(Clone6_K9_ND, R1_distance = V3 - V2)
Clone6_K9_ND <- mutate(Clone6_K9_ND, R2_distance =  V7 - V6)

Clone6_K9_ND <- mutate(Clone6_K9_ND, shared_start = ifelse(V6 >= V2 & V7 >= V3, V6,
                                                           ifelse(V6 <= V2 & V7 <= V3, V2,
                                                                  ifelse(V2 <= V6 & V7 <= V3, V6,
                                                                         ifelse(V6 <= V2 & V3 <= V7, V2, FALSE)))))

Clone6_K9_ND <- mutate(Clone6_K9_ND, shared_stop = ifelse(V6 >= V2 & V7 >= V3, V3,
                                                          ifelse(V6 <= V2 & V7 <= V3, V7,
                                                                 ifelse(V2 <= V6 & V7 <= V3, V7,
                                                                        ifelse(V6 <= V2 & V3 <= V7, V3, FALSE)))))
Clone6_K9_ND <- mutate(Clone6_K9_ND, shared_distance = shared_stop - shared_start)

shared <- Clone6_K9_ND[,c(1,12,13,4,8)]
write.table(shared, file = "Clone6_NoDox_H3K9me3_shared_peaks_coordinate.bed", quote = F, sep = "\t", col.names = F, row.names = F)

#H3K27me3_Clone3
setwd("~/Qians_K9me3_K27me3_processing/peaks/Cl6/H3K27me3")
#first bring in from doing intersection of coordinates with bedtools with -wo option

Clone6_K27_ND <- fread("C6ND_H3K27me3_shared_peaks.bed")
Clone6_K27_ND <- mutate(Clone6_K27_ND, R1_distance = V3 - V2)
Clone6_K27_ND <- mutate(Clone6_K27_ND, R2_distance =  V7 - V6)

Clone6_K27_ND <- mutate(Clone6_K27_ND, shared_start = ifelse(V6 >= V2 & V7 >= V3, V6,
                                                             ifelse(V6 <= V2 & V7 <= V3, V2,
                                                                    ifelse(V2 <= V6 & V7 <= V3, V6,
                                                                           ifelse(V6 <= V2 & V3 <= V7, V2, FALSE)))))

Clone6_K27_ND <- mutate(Clone6_K27_ND, shared_stop = ifelse(V6 >= V2 & V7 >= V3, V3,
                                                            ifelse(V6 <= V2 & V7 <= V3, V7,
                                                                   ifelse(V2 <= V6 & V7 <= V3, V7,
                                                                          ifelse(V6 <= V2 & V3 <= V7, V3, FALSE)))))
Clone6_K27_ND <- mutate(Clone6_K27_ND, shared_distance = shared_stop - shared_start)

shared <- Clone6_K27_ND[,c(1,12,13,4,8)]
write.table(shared, file = "Clone6_NoDox_H3K27me3_shared_peaks_coordinate.bed", quote = F, sep = "\t", col.names = F, row.names = F)


#Determining shared regions between Clone3 & Clone 6 for H3K9me3 and H3K27me3
setwd("~/Rochelle/20221109_UHRF1_genomics/histone_modifications/final_peak_files/")
H3K9me3 <- fread("Clone_intersect_H3K9me3_NoDox_shared_peaks.bed")

H3K9me3 <- mutate(H3K9me3, Cl6_distance = V3 - V2)
H3K9me3 <- mutate(H3K9me3, Cl3_distance =  V8 - V7)

H3K9me3 <- mutate(H3K9me3, shared_start = ifelse(V7 >= V2 & V8 >= V3, V7,
                                                 ifelse(V7 <= V2 & V8 <= V3, V2,
                                                        ifelse(V2 <= V7 & V8 <= V3, V7,
                                                               ifelse(V7 <= V2 & V3 <= V8, V2, FALSE)))))

H3K9me3 <- mutate(H3K9me3, shared_stop = ifelse(V7 >= V2 & V8 >= V3, V3,
                                                ifelse(V7 <= V2 & V8 <= V3, V8,
                                                       ifelse(V2 <= V7 & V8 <= V3, V8,
                                                              ifelse(V7 <= V2 & V3 <= V8, V3, FALSE)))))
H3K9me3 <- mutate(H3K9me3, shared_distance = shared_stop - shared_start)

shared <- H3K9me3[,c(1,14,15)]
write.table(shared, file = "Clones_H3K9me3_shared_peaks_coordinates.bed", quote = F, sep = "\t", col.names = F, row.names = F)


###H3K27me3
H3K27me3 <- fread("Clone_intersect_H3K27me3_NoDox_shared_peaks.bed")

H3K27me3 <- mutate(H3K27me3, Cl6_distance = V3 - V2)
H3K27me3 <- mutate(H3K27me3, Cl3_distance =  V8 - V7)

H3K27me3 <- mutate(H3K27me3, shared_start = ifelse(V7 >= V2 & V8 >= V3, V7,
                                                   ifelse(V7 <= V2 & V8 <= V3, V2,
                                                          ifelse(V2 <= V7 & V8 <= V3, V7,
                                                                 ifelse(V7 <= V2 & V3 <= V8, V2, FALSE)))))

H3K27me3 <- mutate(H3K27me3, shared_stop = ifelse(V7 >= V2 & V8 >= V3, V3,
                                                  ifelse(V7 <= V2 & V8 <= V3, V8,
                                                         ifelse(V2 <= V7 & V8 <= V3, V8,
                                                                ifelse(V7 <= V2 & V3 <= V8, V3, FALSE)))))
H3K27me3 <- mutate(H3K27me3, shared_distance = shared_stop - shared_start)

shared <- H3K27me3[,c(1,14,15)]
write.table(shared, file = "Clones_H3K27me3_shared_peaks_coordinates.bed", quote = F, sep = "\t", col.names = F, row.names = F)

#additional processing was done with deeptools on the HPC. Please see XXXXXXX.sh for associated code. 

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 2D
#PROCESSING
HMD <- fread("Cl6_D14_noDox.HMD_called.rm_regions.bed")
HMD <- HMD[,c(1:3,5)]
HMD <- mutate(HMD, distance = V3-V2)
sum(HMD$distance)

Methyl_domains <- fread("Cl6_D14_noDox.PMD_UMR_LMR_called.rm_regions.bed")
Methyl_domains <- Methyl_domains[,c(1:3,5)]
Methyl_domains <- mutate(Methyl_domains, distance = V3-V2)

PMD <- subset(Methyl_domains, V5 == "PMD")
LMR <- subset(Methyl_domains, V5 == "LMR")
UMR <- subset(Methyl_domains, V5 == "UMR")

sum(PMD$distance)
sum(LMR$distance)
sum(UMR$distance)

#VISUALIZATION
#sum coverage of the genome for each Methyl Domain was input into GraphPad PRISM v10.v1.1

####Figure 2E
#PROCESSING
#Intersect overlaps of interest using bedtools intersect -wao

HMD <- fread("Cl6_noDox_HMD.intersect.Cl6_Dox_HMD.bed")
sum(HMD$V9)

Methyl_domains <- fread("Cl6_noDox_HMD.intersect.Cl6_Dox_PMD_UMR_LMR.bed")

PMD <- subset(Methyl_domains, V10 == "PMD")
LMR <- subset(Methyl_domains, V10 == "LMR")
UMR <- subset(Methyl_domains, V10 == "UMR")

sum(PMD$V11)
sum(LMR$V11)
sum(UMR$V11)

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 2F
#PROCESSING
#analysis was done in bedtools Please see 2024_FEB_UHRF1_ms_code.sh for associated code. 

#VISUALIZATION
######Methyl_domain overlap analysis jaccard results from bedtools
#setwd
setwd("~/Desktop/UHRF1_data_figs/20230710_UHRF1_DNMT_ms/Data_preparation/jaccard_analysis/")

x <- fread("NoDox_PMD_v_D28.txt")

x <- data.frame(x[,-1], row.names = x$V1)
x2 <- data.matrix(x)

col <- colorRampPalette(c("gray20","purple","yellow"))(10)

pheatmap(x2, col = col, 
         cluster_rows = F, 
         cluster_cols = F, 
         scale = c("none"), 
         breaks = seq(0,1, length.out = 11),
         display_numbers = T)


####Figure 2G
#PROCESSING
UMR <- fread("Cl6_noDox_PMD_UMR.intersect.Dox_UMR.bed")
UMR <- UMR[,c(1:4,11:13,15)]
UMR <- mutate(UMR, NoDox_distance = V3-V2)
UMR <- mutate(UMR, D14_distance = V13-V12)
UMR <- mutate(UMR, expand = ifelse(D14_distance > NoDox_distance, "expand", "no_expansion"))

expansion <- subset(UMR, expand == "expand")
expansion <- mutate(expansion, expand_distance = D14_distance - NoDox_distance)

#VISUALIZATION
p <- ggplot(expansion, aes(x=NoDox_distance, y=D14_distance)) +
  geom_point(alpha = 0.05) +
  theme_bw() +
  xlim(0,50000) +
  ylim(0,100000) 

##### FIGURE 3 #####
#Code required for processing and visualization of data presented in Figure 2
#For each subpanel:
#PROCESSING = denotes the code used for processing and analyzing the DNA methylation data;
#VISUALIZATION = denotes the code used for visualization following processing and analysis

####Figure 3A
#PROCESSING
#For all differentially methylated CpGs (mC-valueNoDox >= 0.85, delta-mC-value <=-0.3), determine the rebound category based on delta-mC at D28 versus NoDox
#Clone 6 is presented as an example; other sampled were processed with the same code
WGBS <- mutate(WGBS, C6Rebound_0.3 = if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB >= -0.1, "Rebound_1",
                                             if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.1 & Cl6_D28_dB >= -0.2, "Rebound_2",
                                                     if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.2 & Cl6_D28_dB >= -0.3, "Rebound_3",
                                                             if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.3 & Cl6_D28_dB >= -0.4, "Rebound_4",
                                                                     if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.4 & Cl6_D28_dB >= -0.5, "Rebound_5",
                                                                             if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.5 & Cl6_D28_dB >= -0.6, "Rebound_6",
                                                                                     if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.6 & Cl6_D28_dB >= -0.7, "Rebound_7",
                                                                                             if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.7 & Cl6_D28_dB >= -0.8, "Rebound_8",
                                                                                                     if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.8 & Cl6_D28_dB >= -0.9, "Rebound_9",
                                                                                                             if_else(Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3 & Cl6_D28_dB < -0.9 & Cl6_D28_dB >= -1.0, "Rebound_10", "FALSE")))))))))))

table(WGBS$C6Rebound_0.3)

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 3B
#PROCESSING
#same processing as in Figure 3A

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 3C
#PROCESSING
#Clone6 is presented as an example
#differential methylation -- values to normalize enrichment bias to.
Clone6 <- subset(WGBS, Cl6_NoDox >= 0.85 & Cl6_D14_dB <= -0.3)

annotation <- table(Clone6$Annotation)
CGI.annotation <- table(Clone6$CGI_annotation)
content.WZ <- table(Clone6$WZ.content)
context <- table(Clone6$context)
distance <- table(Clone6$dist_abbr)
distance_all <- table(Clone6$distance.to.next.CpG)

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = F, row.names = F)
write.table(distance_all, file = "distance_all.txt", quote = F, sep = "\t", col.names = F, row.names = F)

#differential methylation REBOUND 
setwd("/run/user/1000/gvfs/smb-share:server=nasgw.hpc.vai.org,share=projects_secondary/rothbart/Rochelle/20221109_UHRF1_genomics/WGBS/tables/Clone6/Rebound/")

annotation <- table(Clone6$Annotation, Clone6$C6Rebound_0.3)
CGI.annotation <- table(Clone6$CGI_annotation, Clone6$C6Rebound_0.3)
content.WZ <- table(Clone6$WZ.content, Clone6$C6Rebound_0.3)
context <- table(Clone6$context, Clone6$C6Rebound_0.3)
distance <- table(Clone6$dist_abbr, Clone6$C6Rebound_0.3)
distance_all <- table(Clone6$distance.to.next.CpG, Clone6$C6Rebound_0.3)

write.table(annotation, file = "annotation.txt", quote = F, sep = "\t", col.names = T, row.names = T)
write.table(CGI.annotation, file = "CGI_annotation.txt", quote = F, sep = "\t", col.names = T, row.names = T)
write.table(content.WZ, file = "content.txt", quote = F, sep = "\t", col.names = T, row.names = T)
write.table(context, file = "context.txt", quote = F, sep = "\t", col.names = T, row.names = T)
write.table(distance, file = "distance.txt", quote = F, sep = "\t", col.names = T, row.names = T)
write.table(distance_all, file = "distance_all.txt", row.names = T, col.names = T, sep = "\t", quote = F)

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 3D
#PROCESSING
#WGBS data set-up
dB <- WGBS[,c(1:3,7:9,22,29,35,38:41,44,45)] #dBs Clone 6
dB <- WGBS[,c(1:3,4:6,22,29,35,38:41,42,43)] #dBs Clone 3
dB <- WGBS[,c(1:3,10:12,22,29,35,38:41,46,47)] #dBs Clone 9
dB <- WGBS[,c(1:3,13:15,22,29,35,38:41,48,49)] #dBs shDNMT1_R1
dB <- WGBS[,c(1:3,16:18,22,29,35,38:41,50,51)] #dBs shDNMT1_R2

dB <- subset(dB, Cl6_NoDox >= 0.85) #15,493,329
dB <- subset(dB, Cl3_NoDox >= 0.85) #15,398,368
dB <- subset(dB, Cl9_NoDox >= 0.85) #14,900,218
dB <- subset(dB, shD1_R1_NoDox >= 0.85) #14,569,374
dB <- subset(dB, shD1_R2_NoDox >= 0.85) #14,733,414

dB$coordinate <- paste0(dB$chr,":",dB$start)
dB <- dB[,c(4:16)]

colnames(dB) <- c("Cl6_NoDox","Cl6_D14","Cl6_D28","distance.to.next.CpG",
                  "annotation","CGI.annotation","content.WZ","context","repliseq_phase",
                  "distance","Cl6_D14_dB","Cl6_D28_dB","coordinate")

melt_dB <- melt(dB, id.vars = c("content.WZ","context","distance","distance.to.next.CpG","coordinate","annotation","CGI.annotation","repliseq_phase"),
                measure.vars = c("Cl6_D14_dB","Cl6_D28_dB"),
                value.name = "value")


#VISUALIZATION
melt_dB_100 <- subset(melt_dB, distance.to.next.CpG <= 100)

melt_dB_100$distance.to.next.CpG <- factor(melt_dB_100$distance.to.next.CpG, levels = c("1","2","3","4","5","6","7","8","9","10","11","12",
                                                                                        "13","14","15","16","17","18","19","20","21","22",
                                                                                        "23","24","25","26","27","28","29","30","31","32",
                                                                                        "33","34","35","36","37","38","39","40","41","42",
                                                                                        "43","44","45","46","47","48","49","50","51","52","53",
                                                                                        "54","55","56","57","58","59","60","61","62","63","64",
                                                                                        "65","66","67","68","69","70","71","72","73","74","75",
                                                                                        "76","77","78","79","80","81","82","83","84","85","86",
                                                                                        "87","88","89","90","91","92","93","94","95","96","99","100"))
#distance_100
col <- colorRampPalette(c("papayawhip","darkslategray1","lightskyblue","gray48"))(100)

p <- ggplot(melt_dB_100, aes(x=variable, y=value, fill=distance.to.next.CpG)) +
  geom_boxplot(outlier.shape = NA) +
  theme_bw() +
  scale_fill_manual(values = col)
coord_cartesian(ylim = c(-1,0.1))

####Figure 3E
#PROCESSING
#see above for set-up


#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1
melt_dB$repliseq_phase <- factor(melt_dB$repliseq_phase, levels = c("P1","P2","P3","P4","P5","P6'","P7","P8",
                                                                    "P9","P10","P11","P12","P13","P14","P15","P16"))

col <- colorRampPalette(c("papayawhip","slategray1","cadetblue4"))(16)

p <- ggplot(melt_dB, aes(x=variable, y=value, fill=repliseq_phase)) +
  geom_boxplot(outlier.shape = NA) +
  theme_bw() +
  scale_fill_manual(values = col) + 
  coord_cartesian(ylim = c(-1,0.1))

####Figure 3F
#PROCESSING
#D28
setwd("/Volumes/projects_secondary/rothbart/Rochelle/20221109_UHRF1_genomics/WGBS/Methyl_domains/Clone6/D28/D28_coverages/")

HMD <- fread("Cl6_D28.HMD_called.rm_regions.bed")
sum(HMD$V4)


Methyl_domains <- fread("Cl6_D28.PMD_UMR_LMR_called.rm_regions.bed")
Methyl_domains <- Methyl_domains[,c(1:3,5)]
Methyl_domains <- mutate(Methyl_domains, distance = V3-V2)

PMD <- subset(Methyl_domains, V5 == "PMD")
LMR <- subset(Methyl_domains, V5 == "LMR")
UMR <- subset(Methyl_domains, V5 == "UMR")

sum(PMD$distance)
sum(UMR$distance)
sum(LMR$distance)

write.table(PMD, file = "Cl6_D28.PMD_called.rm_regions.bed", col.names = F, row.names = F, sep = "\t", quote = F)
write.table(LMR, file = "Cl6_D28.LMR_called.rm_regions.bed", col.names = F, row.names = F, sep = "\t", quote = F)
write.table(UMR, file = "Cl6_D28.UMR_called.rm_regions.bed", col.names = F, row.names = F, sep = "\t", quote = F)


#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

####Figure 3G
#PROCESSING
#analysis was done in bedtools Please see 2024_FEB_UHRF1_ms_code.sh for associated code. 

#VISUALIZATION
setwd("~/Desktop/UHRF1_data_figs/20230710_UHRF1_DNMT_ms/Data_preparation/jaccard_analysis/")

x <- fread("NoDox_PMD_v_D28.txt")

x <- data.frame(x[,-1], row.names = x$V1)
x2 <- data.matrix(x)

col <- colorRampPalette(c("gray20","purple","yellow"))(10)

pheatmap(x2, col = col, 
         cluster_rows = F, 
         cluster_cols = F, 
         scale = c("none"), 
         breaks = seq(0,1, length.out = 11),
         display_numbers = T)

##### FIGURE 4 #####
#Code required for processing and visualization of data presented in Figure 2
#For each subpanel:
#PROCESSING = denotes the code used for processing and analyzing the DNA methylation data;
#VISUALIZATION = denotes the code used for visualization following processing and analysis

####Figure 4B
#PROCESSING
#change working directory to where idats are saved
setwd("/Volumes/projects_secondary/rothbart/Rochelle/UHRF1.mut") #change to your directory

#read in EPIC array data for UHRF1 cover mutants
IDATprefixes <- searchIDATprefixes("/Volumes/projects_secondary/rothbart/Rochelle/UHRF1.mut", 
                                   recursive = TRUE, use.basename = TRUE)

UHRF1.betas <- openSesame(IDATprefixes)

colnames(UHRF1.betas) <- c("NoDox_Y188A","Dox_Y188A","NoDox_G448D","Dox_G448D","NoDox_H741A",
                           "Dox_H741A","NoDox","Dox","NoDox_WT","Dox_WT","NoDox_F46V","Dox_F46V",
                           "NoDox_F59V","Dox_F59V")

#VISUALIZATION
#Density plot
plot(density(UHRF1.betas.df$NoDox), col = "red", lty = 2, lwd = 2, xlim = c(0,1), ylim = c(0,8)) #black coffee
lines(density(UHRF1.betas.df$Dox), col = "red", lty = 1, lwd = 2, xlim = c(0,1), ylim = c(0,8))

lines(density(UHRF1.betas.df$Dox_WT), col = "#8b8687", lty = 1, lwd = 2)
lines(density(UHRF1.betas.df$Dox_F59V), col = "#9068be", lty = 1, lwd = 2) #UBL
lines(density(UHRF1.betas.df$Dox_Y188A), col = "#00A0FF", lty = 1, lwd = 2) #TTD
lines(density(UHRF1.betas.df$Dox_G448D), col = "#FF4C3B", lty = 1, lwd = 2) #SRA
lines(density(UHRF1.betas.df$Dox_H741A), col = "#2BC016", lty = 1, lwd = 2) #RING

####Figure 4C
#PROCESSING
#merge b-value data with EPIC array manifest
UHRF1.betas.ann <- merge(x = UHRF1.betas.df, y = manifest, by = "probeID")
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, distance.abbr = if_else(UHRF1.betas.ann$distance.to.next.CpG < 20, "less20","greater20"))

#Calculated change in methylation (Db-value) to the +Dox WT cover control
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, DoxdB_doxWT = Dox - Dox_WT)
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, WT_dB_doxWT = Dox_WT - Dox_WT)
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, F59V_dB_doxWT = Dox_F59V - Dox_WT)
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, Y188A_dB_doxWT = Dox_Y188A - Dox_WT)
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, G448D_dB_doxWT = Dox_G448D - Dox_WT)
UHRF1.betas.ann <- mutate(UHRF1.betas.ann, H741A_dB_doxWT = Dox_H741A - Dox_WT)

#VISUALIZATION
#Number of probes for each mutant cover that met the following criteria:
#Dox_WT >= 0.85, Db_mutant <= -0.3
#values were input into GraphPad PRISM v10.1.1

####Figure 4E
#PROCESSING
#making subcategories for probe behavior among mutant cover clones
mutant.betas.df <- mutate(mutant.betas.df, UHRF1_Ubiquitin_0.3 = ifelse(ND_H741A >= 0.85 & H741A_dB <= -0.3 & ND_F59V >= 0.85 & F59V_dB <= -0.3, "All",
                                                                        ifelse(ND_H741A >= 0.85 & H741A_dB <= -0.3 & F59V_dB > -0.3, "RING_only",
                                                                               ifelse(ND_F59V >= 0.85 & F59V_dB <= -0.3 & H741A_dB > -0.3, "UBL_only", FALSE))))
mutant.betas.df <- mutate(mutant.betas.df, F59V_H741A_dB = abs(Dox_H741A - Dox_F59V))
mutant.betas.df <- mutate(mutant.betas.df, UHRF1_Ubiquitin_0.3_2 = ifelse(UHRF1_Ubiquitin_0.3 == "UBL_only" & F59V_H741A_dB <= 0.10, "All", 
                                                                          ifelse(UHRF1_Ubiquitin_0.3 == "RING_only" & F59V_H741A_dB <= 0.10, "All", mutant.betas.df$UHRF1_Ubiquitin_0.3)))
mutant.betas.df <- mutate(mutant.betas.df, UHRF1_SRA_EV_0.3 = ifelse(ND_G448D >= 0.85 & G448D_dB <= -0.3 & ND_WT_U1 >= 0.85 & cl9dB <= -0.3, "SRA_EV",
                                                                     ifelse(ND_G448D >= 0.85 & G448D_dB <= -0.3 & cl9dB > -0.3, "SRA_only",
                                                                            ifelse(ND_WT_U1 >= 0.85 & cl9dB <= -0.3 & G448D_dB > -0.3, "EV_only", "None"))))
mutant.betas.df <- mutate(mutant.betas.df, SRA_KD_dB = abs(Dox_G448D - Dox_cl9))
mutant.betas.df <- mutate(mutant.betas.df, UHRF1_SRA_EV_0.3_2 = ifelse(UHRF1_SRA_EV_0.3 == "SRA_only" & SRA_KD_dB <= 0.10, "SRA_EV", 
                                                                       ifelse(UHRF1_SRA_EV_0.3 == "EV_only" & SRA_KD_dB <= 0.10, "SRA_EV", mutant.betas.df$UHRF1_SRA_EV_0.3)))
mutant.betas.df <- mutate(mutant.betas.df, Comparisons = ifelse(UHRF1_Ubiquitin_0.3_2 == "All" & UHRF1_SRA_EV_0.3_2 == "SRA_EV", "i_all_overlaps",
                                                                ifelse(UHRF1_Ubiquitin_0.3_2 != "All" & UHRF1_SRA_EV_0.3_2 == "SRA_EV", "ii_SRA_EV",FALSE)))

#VISUALIZATION
#UHRF1 heatmap example
x <- subset(mutant.betas.df, Comparisons == "ii_SRA_EV")
x <- data.frame(x[,-1], row.names = x$probeID)
x <- x[order(x$Dox_WT_U1, decreasing = TRUE),]
x2 <- data.matrix(x)

pheatmap(x2, col = matlab.like2(20), cluster_cols = F, cluster_rows = F, scale = c("none"), breaks = seq(0,1,length.out = 21), 
         fontsize = 12, angle_col = 90, labels_row = F)


####Figure 4F
#PROCESSING
Dox_high <- subset(UHRF1.betas.ann, NoDox >= 0.85)
WT_high <- subset(UHRF1.betas.ann, NoDox_WT >= 0.85)
F46V_high <- subset(UHRF1.betas.ann, NoDox_F46V >= 0.85)
F59V_high <- subset(UHRF1.betas.ann, NoDox_F59V >= 0.85)
Y188A_high <- subset(UHRF1.betas.ann, NoDox_Y188A >= 0.85)
G448D_high <- subset(UHRF1.betas.ann, NoDox_G448D >= 0.85)
H741A_high <- subset(UHRF1.betas.ann, NoDox_H741A >= 0.85)

Dox_high_dB <- subset(UHRF1.betas.ann, NoDox >= 0.85 & DoxdB <= -0.3)
WT_high_dB <- subset(UHRF1.betas.ann, NoDox_WT >= 0.85 & WT_dB <= -0.3)
F46V_high_dB <- subset(UHRF1.betas.ann, NoDox_F46V >= 0.85 & F46V_dB <= -0.3)
F59V_high_dB <- subset(UHRF1.betas.ann, NoDox_F59V >= 0.85 & F59V_dB <= -0.3)
Y188A_high_dB <- subset(UHRF1.betas.ann, NoDox_Y188A >= 0.85 & Y188A_dB <= -0.3)
G448D_high_dB <- subset(UHRF1.betas.ann, NoDox_G448D >= 0.85 & G448D_dB <= -0.3)
H741A_high_dB <- subset(UHRF1.betas.ann, NoDox_H741A >= 0.85 & H741A_dB <= -0.3)

#categories
setwd("/Volumes/projects_secondary/rothbart/Rochelle/ROTS_20200701_EPIC/UHRF1.mut/tables/H741A/dB_0.3/")

annotation <- table(H741A_high_dB$annotation)
CGI.annotation <- table(H741A_high_dB$CGI.annotation)
context <- table(H741A_high_dB$CpG.context)
content <- table(H741A_high_dB$`#CpGs.WZ`)
distance <- table(H741A_high_dB$distance.abbr)

write.table(annotation, file = "annotation.txt", quote = FALSE, sep = "\t")
write.table(CGI.annotation, file = "CGI.annotation.txt", quote = FALSE, sep = "\t")
write.table(context, file = "context.txt", quote = FALSE, sep = "\t")
write.table(content, file = "content.txt", quote = FALSE, sep = "\t")
write.table(distance, file = "distance.txt", quote = FALSE, sep = "\t")

setwd("/Volumes/projects_secondary/rothbart/Rochelle/ROTS_20200701_EPIC/UHRF1.mut/tables/H741A/EPIC_array//")

annotation <- table(H741A_high$annotation)
CGI.annotation <- table(H741A_high$CGI.annotation)
context <- table(H741A_high$CpG.context)
content <- table(H741A_high$`#CpGs.WZ`)
distance <- table(H741A_high$distance.abbr)

write.table(annotation, file = "annotation.txt", quote = FALSE, sep = "\t")
write.table(CGI.annotation, file = "CGI.annotation.txt", quote = FALSE, sep = "\t")
write.table(context, file = "context.txt", quote = FALSE, sep = "\t")
write.table(content, file = "content.txt", quote = FALSE, sep = "\t")
write.table(distance, file = "distance.txt", quote = FALSE, sep = "\t")

#Counts for high-methyl (distribution for normalization) and differential methylation are put into an Excel file
#that is designed to auto-populate the enrichment bias statistics for each category.

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1

##### FIGURE 5 #####
#Code required for processing and visualization of data presented in Figure 2
#For each subpanel:
#PROCESSING = denotes the code used for processing and analyzing the DNA methylation data;
#VISUALIZATION = denotes the code used for visualization following processing and analysis

####Figure 5D
#PROCESSING
#change working directory to where idats are saved
setwd("/Volumes/projects_secondary/rothbart/Rochelle/DNMT1.mut") #change to your directory

#read in EPIC array data for UHRF1 cover mutants
IDATprefixes <- searchIDATprefixes("/Volumes/projects_secondary/rothbart/Rochelle/DNMT1.mut", 
                                   recursive = TRUE, use.basename = TRUE)

betas <- openSesame(IDATprefixes)

colnames(betas) <- c("CD_NoDox",
                     "CD_Dox",
                     "EV_NoDox",
                     "EV_Dox",
                     "WT_NoDox",
                     "WT_Dox",
                     "UIM1_NoDox",
                     "UIM1_Dox",
                     "UIM2_NoDox",
                     "UIM2_Dox",
                     "dblUIM_NoDox",
                     "dblUIM_Dox")

betas.df <- data.frame(betas.df)

#VISUALIZATION
#Density plot
plot(density(betas.df$EV_NoDox), col = "#F91515", lty = 2, lwd = 2, xlim = c(0,1), ylim = c(0,8)) #black coffee
lines(density(betas.df$EV_Dox), col = "#F91515", lty = 1, lwd = 2, xlim = c(0,1))
lines(density(betas.df$WT_Dox), col = "#000000", lty = 1, lwd = 2)
lines(density(betas.df$CD_Dox), col = "#7F0E17", lty = 1, lwd = 2)
lines(density(betas.df$UIM1_Dox), col = "#1D6F84", lty = 1, lwd = 2)
lines(density(betas.df$UIM2_Dox), col = "#29ACE3", lty = 1, lwd = 2)
lines(density(betas.df$dblUIM_Dox), col = "#2F5697", lty = 1, lwd = 2)

####Figure 5E
#PROCESSING
#merge b-value data with EPIC array manifest
betas.df <- join(x = betas.df, y = manifest, by = "probeID")
betas.df <- mutate(betas.df, distance.abbr = if_else(betas.df$distance.to.next.CpG < 20, "less20","greater20"))

#Calculated change in methylation (Db-value) to the +Dox WT cover control
betas.df <- mutate(betas.df, EV_dB = EV_Dox - WT_Dox)
betas.df <- mutate(betas.df, CD_dB = CD_Dox - WT_Dox)
betas.df <- mutate(betas.df, UIM1_dB = UIM1_Dox - WT_Dox)
betas.df <- mutate(betas.df, UIM2_dB = UIM2_Dox - WT_Dox)
betas.df <- mutate(betas.df, dblUIM_dB = dblUIM_Dox - WT_Dox)

#VISUALIZATION
#Number of probes for each mutant cover that met the following criteria:
#Dox_WT >= 0.85, Db_mutant <= -0.3
#values were input into GraphPad PRISM v10.1.1

####Figure 4G
#PROCESSING
#making subcategories for probe behavior among mutant cover clones
betas.df <- mutate(betas.df, DNMT1_UIM_0.3 = ifelse(UIM1_NoDox >= 0.85 & UIM1_dB <= -0.3 & UIM2_NoDox >= 0.85 & UIM2_dB <= -0.3 & dblUIM_NoDox >= 0.85 & dblUIM_dB <= -0.3, "All",
                                                    ifelse(UIM1_NoDox >= 0.85 & UIM1_dB <= -0.3 & UIM2_NoDox >= 0.85 & UIM2_dB <= -0.3 & dblUIM_dB > -0.3, "UIM1_UIM2",
                                                           ifelse(dblUIM_NoDox >= 0.85 & dblUIM_dB <= -0.3 & UIM2_NoDox >= 0.85 & UIM2_dB <= -0.3 & UIM1_dB > -0.3, "UIM2_dblUIM",
                                                                  ifelse(dblUIM_NoDox >= 0.85 & dblUIM_dB <= -0.3 & UIM1_NoDox >= 0.85 & UIM1_dB <= -0.3 & UIM2_dB > -0.3, "UIM1_dblUIM",
                                                                         ifelse(dblUIM_NoDox >= 0.85 & dblUIM_dB <= -0.3 & UIM1_dB > -0.3 & UIM2_dB > -0.3, "dblUIM_only",
                                                                                ifelse(UIM1_NoDox >= 0.85 & UIM1_dB <= -0.3 & UIM2_dB > -0.3 & dblUIM_dB > -0.3, "UIM1_only",
                                                                                       ifelse(UIM2_NoDox >= 0.85 & UIM2_dB <= -0.3 & UIM1_dB > -0.3 & dblUIM_dB > -0.3, "UIM2_only", "None"))))))))

betas.df <- mutate(betas.df, DNMT1_cd_EV_0.3 = ifelse(CD_NoDox >= 0.85 & CD_dB <= -0.3 & EV_NoDox >= 0.85 & EV_dB <= -0.3, "CD_EV",
                                                      ifelse(CD_NoDox >= 0.85 & CD_dB <= -0.3 & EV_dB > -0.3, "CD",
                                                             ifelse(EV_NoDox >= 0.85 & EV_dB <= -0.3 & CD_dB > -0.3, "EV", "None"))))

betas.df <- mutate(betas.df, hypo_0.3 = ifelse(DNMT1_UIM_0.3 == "All" & DNMT1_cd_EV_0.3 == "CD_EV", "iii_all_overlaps",
                                               ifelse(DNMT1_UIM_0.3 == "UIM2_dblUIM" & DNMT1_cd_EV_0.3 == "CD_EV", "iv_UIM2_dblUIM_CD_EV",
                                                      ifelse(DNMT1_UIM_0.3 == "dblUIM_only" & DNMT1_cd_EV_0.3 == "CD_EV", "v_dblUIM_CD_EV",
                                                             ifelse(DNMT1_UIM_0.3 == "dblUIM_only" & DNMT1_cd_EV_0.3 != "CD_EV","vi_dblUIM_only","None")))))

#VISUALIZATION
#DNMT1 heatmap example
x <- subset(betas.df, hypo_0.3 == "iv_UIM2_dblUIM_CD_EV" | hypo_0.3 == "v_dblUIM_CD_EV")

x <- data.frame(x[,-1], row.names = x$probeID)
x <- x[order(x$WT_Dox, decreasing = TRUE),]
x2 <- data.matrix(x)

pheatmap(x2, col = matlab.like2(20), cluster_cols = F, cluster_rows = F, scale = c("none"), breaks = seq(0,1,length.out = 21), 
         fontsize = 12, angle_col = 90, annotation_row = ann, annotation_colors = ann_colors, labels_row = F)


####Figure 4H
#PROCESSING
#High_methyl_example
POI <- subset(betas.df, UIM1_NoDox >= 0.85)

annotation <- table(POI$annotation)
CGI.annotation <- table(POI$CGI.annotation)
context <- table(POI$CpG.context)
content <- table(POI$`#CpGs.WZ`)
distance <- table(POI$distance.abbr)

write.table(annotation, file = "annotation.txt", quote = FALSE, sep = "\t")
write.table(CGI.annotation, file = "CGI.annotation.txt", quote = FALSE, sep = "\t")
write.table(context, file = "context.txt", quote = FALSE, sep = "\t")
write.table(content, file = "content.txt", quote = FALSE, sep = "\t")
write.table(distance, file = "distance.txt", quote = FALSE, sep = "\t")

#Differential_methylation_example
POI <- subset(betas.df, UIM1_NoDox >= 0.85 & UIM1_dB <= -0.3)

annotation <- table(POI$annotation)
CGI.annotation <- table(POI$CGI.annotation)
context <- table(POI$CpG.context)
content <- table(POI$`#CpGs.WZ`)
distance <- table(POI$distance.abbr)

write.table(annotation, file = "annotation.txt", quote = FALSE, sep = "\t")
write.table(CGI.annotation, file = "CGI.annotation.txt", quote = FALSE, sep = "\t")
write.table(context, file = "context.txt", quote = FALSE, sep = "\t")
write.table(content, file = "content.txt", quote = FALSE, sep = "\t")
write.table(distance, file = "distance.txt", quote = FALSE, sep = "\t")

#Counts for high-methyl (distribution for normalization) and differential methylation are put into an Excel file
#that is designed to auto-populate the enrichment bias statistics for each category.

#VISUALIZATION
#values were input into GraphPad PRISM v10.1.1


sessionInfo()
#R version 4.3.2 (2023-10-31)
#Platform: x86_64-apple-darwin20 (64-bit)
#Running under: macOS Ventura 13.1

#Matrix products: default
#BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib 
#LAPACK: /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0

#locale:
#  [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

#time zone: America/Detroit
#tzcode source: internal

#attached base packages:
#  [1] stats     graphics  grDevices utils     datasets  methods   base     

#other attached packages:
#  [1] colorRamps_2.3.1     RColorBrewer_1.1-3   pheatmap_1.0.12      data.table_1.14.8    dplyr_1.1.3          ggplot2_3.4.4        sesame_1.20.0        sesameData_1.20.0   
#[9] ExperimentHub_2.10.0 AnnotationHub_3.10.0 BiocFileCache_2.10.1 dbplyr_2.4.0         BiocGenerics_0.48.1 

#loaded via a namespace (and not attached):
#  [1] tidyselect_1.2.0              blob_1.2.4                    filelock_1.0.2                Biostrings_2.70.1             bitops_1.0-7                  fastmap_1.1.1                
#[7] RCurl_1.98-1.13               promises_1.2.1                digest_0.6.33                 mime_0.12                     lifecycle_1.0.4               ellipsis_0.3.2               
#[13] KEGGREST_1.42.0               interactiveDisplayBase_1.40.0 RSQLite_2.3.3                 magrittr_2.0.3                compiler_4.3.2                rlang_1.1.2                  
#[19] tools_4.3.2                   utf8_1.2.4                    yaml_2.3.7                    S4Arrays_1.2.0                bit_4.0.5                     curl_5.1.0                   
#[25] DelayedArray_0.28.0           plyr_1.8.9                    abind_1.4-5                   BiocParallel_1.36.0           withr_2.5.2                   grid_4.3.2                   
#[31] stats4_4.3.2                  preprocessCore_1.64.0         fansi_1.0.5                   wheatmap_0.2.0                xtable_1.8-4                  colorspace_2.1-0             
#[37] scales_1.2.1                  SummarizedExperiment_1.32.0   cli_3.6.1                     crayon_1.5.2                  generics_0.1.3                rstudioapi_0.15.0            
#[43] reshape2_1.4.4                httr_1.4.7                    tzdb_0.4.0                    DBI_1.1.3                     cachem_1.0.8                  stringr_1.5.0                
#[49] zlibbioc_1.48.0               parallel_4.3.2                AnnotationDbi_1.64.1          BiocManager_1.30.22           XVector_0.42.0                matrixStats_1.1.0            
#[55] vctrs_0.6.4                   Matrix_1.6-2                  IRanges_2.36.0                hms_1.1.3                     S4Vectors_0.40.1              bit64_4.0.5                  
#[61] glue_1.6.2                    codetools_0.2-19              stringi_1.7.12                gtable_0.3.4                  BiocVersion_3.18.0            later_1.3.1                  
#[67] GenomeInfoDb_1.38.0           GenomicRanges_1.54.1          munsell_0.5.0                 tibble_3.2.1                  pillar_1.9.0                  rappdirs_0.3.3               
#[73] htmltools_0.5.7               GenomeInfoDbData_1.2.11       R6_2.5.1                      lattice_0.22-5                shiny_1.7.5.1                 Biobase_2.62.0               
#[79] readr_2.1.4                   png_0.1-8                     memoise_2.0.1                 httpuv_1.6.12                 Rcpp_1.0.11                   SparseArray_1.2.1            
#[85] MatrixGenerics_1.14.0         pkgconfig_2.0.3 

