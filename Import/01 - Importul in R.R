# Setarea directorului de lucru
setwd("D:/R Projects/ADCS-I/Import")

# Instalarea si incaracrea librariilor necesare
if(!require(readxl)) install.packages("readxl")

library(readxl)

# Importul datelor in R
ds <- read.csv("D:/R Projects/ADCS-I/Import/Baza de date CSV.txt")
ds <- read.csv("Import/Baza de date CSV.txt")
ds <- read.csv("Baza de date CSV.txt")

# Verificatea tipului de date
ds$country; is.factor(ds$country)
ds <- read.csv("Baza de date CSV.txt", stringsAsFactors = T)

ds <- read.csv("Baza de date CSV.csv", sep = ";")
ds <- read.csv2("Baza de date CSV.csv")
ds <- read.csv("Baza de date TAB.txt", sep = "\t")

ds <- read.table("Baza de date TAB.txt", sep = "\t", header = T)

# Importul unui fisier Excel
ds <- read_excel("Baza de date Excel.xls", sheet = 2)
