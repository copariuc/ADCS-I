# Setarea directorului de lucru
setwd("D:/R Projects/ADCS-I/Import")

# Instalarea si incaracrea librariilor necesare
if(!require(haven)) install.packages("haven")
if(!require(writexl)) install.packages("writexl")
library(haven); library(writexl)


# Exportul datelor in format intermediar
write.table(ds, "Export CSV.txt", sep = ",")
write.csv(ds, "Export CSV.txt")
write.csv2(ds, "Export CSV2.txt")
write.table(ds, "Export CSV2.txt", sep = ";")

# Exportul datelor in format SPSS
write_sav(ds, path = "Export SPSS.sav")

# Exportul datelor in format Excel
write_xlsx(ds, path = "Export Excel.xlsx")
