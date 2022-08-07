library(ggplot2)

figure2 <- read.csv("absent.csv", header = TRUE)

figure2 <- read.csv("absent.csv", header = TRUE)
figure2

# Barplot
bp<- ggplot(figure2, aes(x="", y= Percent, fill= Why.people.don.t.participate.in.sport.activity))+
  geom_bar(width = 1, stat = "identity")
bp

# install.packages("ggplot2")
library(ggplot2)

ggplot(figure2, aes(x = "", y = Percent, fill = Why.people.don.t.participate.in.sport.activity)) +
  geom_col(color = "black") +
  geom_text(aes(label = Percent),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer() 

png(filename="figure2.png",width=940,height=427,unit="px",bg="transparent")
barplot(figure2,
        beside = TRUE)
dev.off()




# Use custom color palettes
pie + scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))




