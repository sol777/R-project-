data <- as.data.frame(matrix(c(0.629, 0.794, 0.612, 0.738, 0.539, 0.325, 0.332, 0.463, 0.23, 0.429, 0.715, 0.726, 0.274, 
                               0.002, 0.105), ncol = 3))
colnames(data) <- c("Age" , "Gender" , "Year")
rownames(data) <- c("Making body healthy" , "Helping mental healthy" , "Building up ties", "Improving leadership skill", "Satisfying with sport activity")

data <- rbind(rep(1,1) , rep(0,1) , data)
data

colors_border=c( rgb(0.2,0.5,0.5,0.9), rgb(0.8,0.2,0.5,0.9) , rgb(0.7,0.5,0.1,0.9) )
colors_in=c( rgb(0.2,0.5,0.5,0.4), rgb(0.8,0.2,0.5,0.4) , rgb(0.7,0.5,0.1,0.4) )

# plot with default options:
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)

legend(x=0.7, y=1, legend = rownames(data[-c(1,2),]), bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)


png(filename = "radarchart figure5.png", width=804, height=491, unit="px", bg="transparent")
radarchart( data  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.8,
            #custom labels
            vlcex=0.8 
)
dev.off()


# excel 파일 열때 써먹기 
install.packages("openxlsx")
library("openxlsx")

write.xlsx(data, sheetName = "sheet1", file = "matrix.xlsx")

install.packages("readxl")
library(readxl)

my_data <- read_excel("matrix.xlsx")
my_data
