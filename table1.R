library(readr)
library(dplyr)
library(ggplot2)
library(patchwork)
getwd()

#Year "Table 1-1"
data1                             
data1 <- matrix(c(9, 10.3, 34, 39.1, 15, 17.2, 5, 5.7, 2, 2.3, 5, 5.7),2,6)
data1
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("Freshmen", "Sophomore", "Junior", "Senior", "MasterStudent", "ExchageTransfer"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")


#Age  "Table 1-2"
data2
data2 <- matrix(c(6, 6.9, 52, 59.8, 11, 12.6, 1, 1.1),2,4) 
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("under18", "18 to 24", "25 to 34", "Above34"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")


#Gender "Table 1-3"
data3 <- matrix(c(47, 54, 23, 26.4),2,2)
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("Women", "Men"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")

#Year Save code
png(filename="table1-1.png",width=940,height=427,unit="px",bg="transparent")
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("Freshmen", "Sophomore", "Junior", "Senior", "MasterStudent", "ExchageTransfer"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()

#Age Save code
png(filename="table1-2.png",width=940,height=427,unit="px",bg="transparent")
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("under18", "18 to 24", "25 to 34", "Above34"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()

#Gender save code
png(filename="table1-3.png",width=940,height=427,unit="px",bg="transparent")
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("Women", "Men"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()


