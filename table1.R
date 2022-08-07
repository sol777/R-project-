library(readr)
library(dplyr)
library(ggplot2)
library(patchwork)
getwd()

data1 <- as.matrix(data.frame(Freshmen = c(9, 10.3),
                              Sophomore = c(34, 39.1),
                              Junior  = c(15, 17.2),
                              Senior = c(5, 5.7),
                              MasterStudent = c(2, 2.3),
                              ExchageTransfer = c(5, 5.7)))
                              
                             
data1                           
p1 <- barplot(data1,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)


data2 <- as.matrix(data.frame("under18" = c(6, 6.9),
                              "18to24" = c(52, 59.8),
                              "25to34" = c(11, 12.6),
                              "Above34" = c(1, 1.1)))
p2 <- barplot(data2,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)


data3 <- as.matrix(data.frame(women = c(47, 54),
                              men = c(23, 26.4)))
p3 <- barplot(data3,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)



png(filename="table1.png",width=940,height=427,unit="px",bg="transparent")
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()

png(filename="table2.png",width=940,height=427,unit="px",bg="transparent")
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()

png(filename="table3.png",width=940,height=427,unit="px",bg="transparent")
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()


