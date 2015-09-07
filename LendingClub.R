########################################################################
# Description: Functions with Lending Club Data
# Author: Joe Salvatore
# Date: September 5, 2015
########################################################################


data <- read.csv("C:/Users/Joe Salvatore/Desktop/LoanStats2013-14.csv")
LC2013_14 <- data
rm(list = ls())

ls("package:LendingClubJFS")
data(package = "LendingClubJFS")
save(LC2013_14, file =  "C:/Users/Joe Salvatore/Documents/GitHub/LNDCLB/LendingClub/data/LC2013_14.rda")

library(devtools)
install_github("jsalvatore/LNDCLB/LendingClub", ref = "master")
library(LendingClub)         
data("LC2015")
data("LC2013_14")
data("LCDataDictionary")


LCDD <- read.csv("C:/Users/Joe Salvatore/Desktop/LCDataDictionary.csv")
save(LCDD, file =  "C:/Users/Joe Salvatore/Documents/GitHub/LNDCLB/LendingClub/data/LCDataDictionary.rda")

install("C:/Users/Joe Salvatore/Documents/GitHub/LNDCLB/LendingClub/")

library(Hmisc)
describe(LC2015$issue_d)
