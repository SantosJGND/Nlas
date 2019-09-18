
setwd('D:/GitHub/Nlas')

#install.packages("ade4")
library(ade4)

gen_data <- read.table('gen_distmat.txt')

## read genetic distance matrix.
gen_data <- as.matrix(gen_data)
gen_data <- dist(gen_data)

## read roost_use distance matrix.
roost_data <- read.table('roost_distmat.txt')
roost_data <- dist(roost_data)

## perform mantel test.
mantel.rtest(roost_data, gen_data, nrepet = 9999)

