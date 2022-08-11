library(patchwork)
library(ggplot2)

data1 <- matrix(c(47, 54, 20, 23, 3, 3.4),2,3)
data1
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("yes", "no", "maybe"), legend.text = rownames(data1), 
        args.legend = list(x = "topright", inset = c(-0.20, 0)))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")



data2 <- matrix(c(6, 6.9, 10, 11.5, 16, 18.4, 18, 20.7),2,4)
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, legend = TRUE, ylim = c(0, 20), names = c("0 time in a week", "1 time in a week", "2-3 time in a week","4-5times in a week"))
title(xlab = "frequency", ylab = "percentage")
legend(x = 1, y= 20,
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")


data3 <- matrix(c(21, 24.1, 14, 16.1, 5, 5.7, 6, 6.9, 3, 3.4, 1, 1.1),2,6)
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("less than 1hours", "more than 1hours - less than 2hours",
        "more than 2hrs - less than 3hrs", "more than 3hrs - less than 4hrs", "more than 4hrs - less than 5hrs", 
        "more than 5hrs"))
title(xlab = "frequency", ylab = "percentage")


png(filename="table2-1.png",width=700,height=500,unit="px",bg="transparent")
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("yes", "no", "maybe"), legend.text = rownames(data1), 
        args.legend = list(x = "topright", inset = c(-0.20, 0)))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()

png(filename="table2-2.png",width=1000,height=600,unit="px",bg="transparent")
data2 <- matrix(c(6, 6.9, 10, 11.5, 16, 18.4, 18, 20.7),2,4)
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, legend = TRUE, ylim = c(0, 20), names = c("0 time in a week", "1 time in a week", "2-3 time in a week","4-5times in a week"))
title(xlab = "frequency", ylab = "percentage")
legend(x = 1, y= 20,
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()

png(filename="table2-3.png",width=1700,height=700,unit="px",bg="transparent")
data3 <- matrix(c(21, 24.1, 14, 16.1, 5, 5.7, 6, 6.9, 3, 3.4, 1, 1.1),2,6)
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE, names = c("less than 1hours", "more than 1hours - less than 2hours",
                                 "more than 2hrs - less than 3hrs", "more than 3hrs - less than 4hrs", "more than 4hrs - less than 5hrs", 
                                 "more than 5hrs"))
title(xlab = "frequency", ylab = "percentage")
legend("topright",
       legend = c("Frequency", "Percentage"),
       fill = c("#1b98e0", "#353436"),       
       border = "black")
dev.off()
