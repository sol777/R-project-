library(ggplot2)
library(fmsb)
data <- as.data.frame(matrix(c(0.721, 0.415, 0.557, 0.246, 0.53, 0.574, 0.594, 0.167, 0.167, 0.687, 0.583, 0.504, 0.762, 
                               0.01, 0.516), ncol = 3))

colnames(data) <- c("Age" , "Gender" , "Year")
rownames(data) <- c("Making body healthy" , "Helping mental healthy" , "Building up ties", "Improving leadership skill", "Satisfying with sport activity")

data <- rbind(rep(1,1) , rep(0,1) , data)
data

colors_border=c( rgb(0.2,0.5,0.5,0.9), rgb(0.8,0.2,0.5,0.9) , rgb(0.7,0.5,0.1,0.9) )
colors_in=c( rgb(0.2,0.5,0.5,0.4), rgb(0.8,0.2,0.5,0.4) , rgb(0.7,0.5,0.1,0.4) )

# plot with default options:
library(radarchart)
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,1,1), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)

