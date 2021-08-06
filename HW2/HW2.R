setwd("C:/Users/d/Google Drive/Notability/Categorical Data/psets/HW2")

#Q1

#Odds ratio: 

(802*494) / (34*53)

library(epitools)

table<-matrix(c(802,34,53,494),nrow = 2, ncol = 2)

table

oddsratio.wald(table)