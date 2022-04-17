# Setarea directorului de lucru
setwd("D:/R Projects/ADCS-I/Import")

# Instalarea si incaracrea librariilor necesare
if(!require(readxl)) install.packages("readxl")
if(!require(haven)) install.packages("haven")
if(!require(foreign)) install.packages("foreign")

library(readxl); library(haven); library(foreign)

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

# Importul unui fisier SPSS
ds <- read_sav("Baza de date SPSS.sav")
ds <- read.spss("Baza de date SPSS.sav", to.data.frame = T, use.value.labels = T)
