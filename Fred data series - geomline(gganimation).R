library(dplyr)
library(gganimate)
fred1 <- read.csv("consumer sentiment.csv", header = TRUE)
fred1
fred2 <- read.csv("Inflation Expectation.csv", header = TRUE)
fred2


dataset = merge(fred1, fred2, by="Year")
head(dataset)
dataset

datasetMelted <- reshape2::melt(dataset, id.var ='Year')
head(datasetMelted)
year <- as.Date(datasetMelted$Year)
class(year)
datasetMelted

ggplot(datasetMelted, aes(x= year, y=value, col=variable)) + geom_line()


year1 <- as.Date(dataset$Year)
class(year)
class(dataset$Consumer.Sentiment)

ggplot(datasetMelted, aes(x= year, y=value, col=variable)) + geom_line()
library(gganimate)
ggplot(datasetMelted, aes(x= year, y=value, col=variable)) + geom_line() + 
  transition_reveal(along = year)

png(filename="Fred 2 data series(gganimation_geomline).png",width=940,height=427,unit="px",bg="transparent")
ggplot(datasetMelted, aes(x= year, y=value, col=variable)) + geom_line()
library(gganimate)
ggplot(datasetMelted, aes(x= year, y=value, col=variable)) + geom_line() + 
  transition_reveal(along = year)
dev.off()









