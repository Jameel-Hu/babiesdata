# babiesdata
testing the difference of birth weight between smoking and nonsmoking 
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv"
if(!file.exists("femaleMiceWeights.csv")) download(url,destfile=filename)
dat <- read.csv(filename)

![image](https://github.com/Jameel-Hu/babiesdata/assets/110083577/1408569d-0c6e-4fd6-8569-7b3cdee78cfb)
