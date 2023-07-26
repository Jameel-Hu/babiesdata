url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/babies.txt"
filename <- basename(url)
download(url, destfile=filename)
babies <- read.table("babies.txt", header=TRUE)
library(dplyr)
set.seed(1)
bwt.nonsmoke <- filter(babies, smoke==0) %>% select(bwt) %>% unlist 
bwt.smoke <- filter(babies, smoke==1) %>% select(bwt) %>% unlist
library(rafalib)
mean(bwt.nonsmoke)-mean(bwt.smoke)
popsd(bwt.nonsmoke)
popsd(bwt.smoke)
(tQuantity <- qt(1- 0.01/2, df=(2*25-2)))
(CLTQuantity <- qnorm(1-0.01/2))
CLTQuantity - tQuantity
N <- 5
set.seed(1)
ns_sample <- sample(bwt.nonsmoke, N)
s_sample <- sample(bwt.smoke, N)
t.test(ns_sample, s_sample)$p.value
