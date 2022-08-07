data1 <- as.matrix(data.frame(yes = c(47, 54),
                              no = c(20, 23),
                              maybe = c(3, 3.4)))

p1 <- barplot(data1,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)


data2 <- as.matrix(data.frame("0 time in a week" = c(6, 6.9),
                              "1 time in a week" = c(10, 11.5),
                              "2-3 time in a week" = c(16, 18.4),
                              "4-5 times in a week" = c(18, 20.7)))
p2 <- barplot(data2,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)


data3 <- as.matrix(data.frame("less than 1hours" = c(21, 24.1),
                              "more than 1hours - less than 2hours" = c(14, 16.1),
                              "more than 2hrs - less than 3hrs" = c(5, 5.7),
                              "more than 3hrs - less than 4hrs" = c(6, 6.9),
                              "more than 4hrs - less than 5hrs" = c(3, 3.4),
                              "more than 5hrs" = c(1, 1.1)))
  
p3 <- barplot(data3,
              col = c("#1b98e0", "#353436"),
              beside = TRUE)


png(filename="table2-1.png",width=2000,height=600,unit="px",bg="transparent")
barplot(data1,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()

png(filename="table2-2.png",width=2000,height=600,unit="px",bg="transparent")
barplot(data2,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()

png(filename="table2-3.png",width=2000,height=600,unit="px",bg="transparent")
barplot(data3,
        col = c("#1b98e0", "#353436"),
        beside = TRUE)
dev.off()

