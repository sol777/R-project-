library(dplyr)
library(gganimate)
fred1 <- read.csv("consumer sentiment.csv", header = TRUE)
fred1
fred2 <- read.csv("Inflation Expectation.csv", header = TRUE)
fred2

Year2 <- as.Date(fred2$Year)
class(Year2)


ggplot(fred2) +
  geom_line(aes( x = Year2, y = Inflation.Expectation))
library(gganimate)
ggplot(fred2) +
  geom_line(aes(x = Year2, y = Inflation.Expectation)) + 
  transition_reveal(along = Year2)

png(filename="Inflation Expectation(gganimation_geomline).png",width=940,height=427,unit="px",bg="transparent")
ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment))
library(gganimate)
ggplot(df2) + 
  geom_line(aes(x = Year, y = Consumer.Sentiment)) + 
  transition_reveal(along = Year)
dev.off()



