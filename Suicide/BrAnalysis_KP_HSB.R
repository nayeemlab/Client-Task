library(dplyr)
library("FactoMineR")
library("factoextra")
library(extrafont)
library(ggplot2)
library(pastecs)
library(corrplot)
library(ppcor)
library(factoextra)
library(psych)
library(GPArotation)
library(Hmisc)
library(dplyr)
library(ape)
library(psych)
library(psychometric)


require(foreign)
require(MASS)
require(pROC)
require(survey)
require(ResourceSelection)
require(ROCR)
require(car)
require(ggplot2)
require(maptools)


setwd('E:\\ResearchProject\\Client Task\\Suicide')

#graph3
q <- readShapeSpatial('bgd_admbnda_adm1_bbs_20180410.shp')
q_1 <- fortify(q)

HS <- read.csv("HS.csv")

q_1$prev <- ifelse(q_1$id==0,HS$Percentage[1],
                   ifelse(q_1$id==1,HS$Percentage[2],
                          ifelse(q_1$id==2,HS$Percentage[3],
                                 ifelse(q_1$id==3,HS$Percentage[4],
                                        ifelse(q_1$id==4,HS$Percentage[5],
                                               ifelse(q_1$id==5,HS$Percentage[6],
                                                      ifelse(q_1$id==6,HS$Percentage[7],
                                                             HS$Percentage[8])))))))


centroids.df <- as.data.frame(coordinates(q))
names(centroids.df) <- c("Longitude", "Latitude")
centroids.df$name <- c('    Barisal',
                       'Chittagong\n',
                       'Dhaka','Khulna\n',
                       'Mymensingh\n',
                       'Rajshahi',
                       'Rangpur\n','Sylhet')


y <- ggplot(q_1, aes(x=long, y=lat)) +geom_polygon(aes(group=group,fill=prev),colour= "lightgrey")+coord_map()+
  geom_text(data=centroids.df,aes(label = name, x = Longitude, y = Latitude),color='black',size=4)+
  ggtitle("")+
  scale_fill_distiller(name='Percentage (%)',palette ="Blues", direction=1)+
  theme(plot.title = element_text(size = 10,hjust=0.5),
        legend.title = element_text(size=10),
        legend.text = element_text(size=10))
y

tiff("Map.tiff", units="in", width=6, height=6, res=300)
gridExtra::grid.arrange(y)
dev.off()



 