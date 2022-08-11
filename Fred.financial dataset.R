library(readr)
library(ggplot2)
library(patchwork)
fred1 <- read.csv("consumer sentiment.csv", header = TRUE)
fred1
fred2 <- read.csv("Inflation Expectation.csv", header = TRUE)
fred2
data1 <- as.integer(fred1$Consumer.Sentiment)
data1
data2 <- as.integer(fred2$Inflation.Expectation)
data2

p1 <- ggplot(data = fred1, aes(x = data1), stat = "count") + 
  geom_bar() +
  labs(x = "Consumer Sentiment")
p1

         
p2 <-   ggplot(data = fred1, aes(x = data1)) + 
  geom_bar() +
  labs(x = "Consumer Sentiment") +
  scale_x_binned(n.breaks = 30, guide = guide_axis(n.dodge = 2))
p2



p3 <- ggplot(data = fred2, aes(x = data2), stat = "count") + 
 geom_bar() +
 labs(x = "Inflation Expectation")
p3

p4 <- ggplot(data = fred2, aes(x = data2)) + 
  geom_bar() +
  labs(x = "Inflation Expectation") +
  scale_x_binned(n.breaks = 30, guide = guide_axis(n.dodge = 2))
p4

library(patchwork)
A <- p1 + p2 + scale_y_continuous(limits = c(0, 30)) 
B <- p3 + p4 +scale_y_continuous(limits = c(0, 150)) 
A/B + plot_layout(widths = c(1, 2, 1))


png(filename = "Fred financial dataset(patchwork.histogram).png", width = 940, height = 427, units ="px", bg = "transparent")
A/B + plot_layout(widths = c(1, 2, 1))
dev.off()



