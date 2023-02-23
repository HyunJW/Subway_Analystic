setwd("C:/Users/tjoeun/Desktop/송수린/workspace/Log_analysis")
c_t<-read.csv("혼잡도와 환승여부 및 총 승차인원.csv")
dim(c_t)

#install.packages('GGally')
library(GGally)
#install.packages('nord')
library(nord)
#install.packages('tidyverse')
library(tidyverse)
ggpairs(c_t,columns=22:27,ggplot2::aes(colour=환승가능여부,alpha = 0.5),
        lower = list(continuous = "smooth"))+
        scale_color_nord('aurora')+
        scale_fill_nord('aurora')+
        theme_minimal()

