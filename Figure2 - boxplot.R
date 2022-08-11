sport_data <- read.csv("Sport Data.csv", header = TRUE)
sport_data
View(sport_data)

year <- c(rep('Freshmen', 20), rep('Sophomore', 20), rep('Junior', 20),
                                      rep('Senior', 20), rep('Master', 20), rep('Exchange', 20))
year
reasons <- c(sport_data$Freshmen, sport_data$Sophomore, sport_data$Junior, sport_data$Senior, sport_data$Master, sport_data$Exchange)
reasons
my_data <- data.frame(year, reasons)
View(my_data)

plot(factor(year), reasons)




png(filename = "pie chart.png", width=804, height=491, unit="px", bg="transparent")
plot(factor(year), reasons)
dev.off()
