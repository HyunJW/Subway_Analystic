setwd("C:/Users/tjoeun/Desktop/송수린/workspace/Log_analysis")
c_t<-read.csv("혼잡도와 환승 및 총 승차인원.csv")
dim(c_t)

#install.packages('GGally')
library(GGally)
#install.packages('nord')
library(nord)
#install.packages('tidyverse')
library(tidyverse)

# 출퇴근 시간, 출퇴근 외 시간, 하루동안의 혼잡도와 총 승차인원 간의 관계
ggpairs(c_t,columns=c(22:25,27),ggplot2::aes(colour=환승가능여부,alpha = 0.5),
        lower = list(continuous = "smooth"))+
        scale_color_nord('aurora')+
        scale_fill_nord('aurora')+
        theme_minimal()

# 환승 가능 노선의 개수와 총 승차인원 간의 관계
ggpairs(c_t,columns=c(26:28),ggplot2::aes(colour=환승가능여부,alpha = 0.5),
        lower = list(continuous = "smooth"))+
  scale_color_nord('aurora')+
  scale_fill_nord('aurora')+
  theme_minimal()

ggpairs(c_t,columns=c(22:25,28),ggplot2::aes(colour=환승가능여부,alpha = 0.5),
        lower = list(continuous = "smooth"))+
  scale_color_nord('aurora')+
  scale_fill_nord('aurora')+
  theme_minimal()


dfy<-read.csv("환승가능 승차인원.csv")
dfn<-read.csv("환승불가능 승차인원.csv")
var.test(dfy$총.승차인원, dfn$총.승차인원)
t.test(dfy$총.승차인원, dfn$총.승차인원, alternative="two.sided", var.equal=F)
l<-lm(df$총.승차인원~df$환승가능여부, data=df)
summary(l)
plot(l)

df$환승<-ifelse(df$환승가능여부=='Y', 1, 0)
cor(df$환승,df$총.승차인원, method = 'spearman', use = 'complete.obs')
cor(c_t$환승가능노선수,c_t$총.승차인원, method = 'spearman', use = 'complete.obs')
