library(dplyr)
library(gganimate)
fred1 <- read.csv("consumer sentiment.csv", header = TRUE)
fred1
fred2 <- read.csv("Inflation Expectation.csv", header = TRUE)
fred2


ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment))
library(gganimate)
ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment)) + 
  transition_reveal(along = Year)

png(filename="Consumer Sentiment(gganimation_geomline()).png",width=940,height=427,unit="px",bg="transparent")
ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment))
library(gganimate)
ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment)) + 
  transition_reveal(along = Year)
dev.off()

