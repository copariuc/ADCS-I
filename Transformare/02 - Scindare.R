# Instalarea si incarcarea pachetelor necesare
if(!require(foreign)) install.packages("foreign")

library(foreign)

# Incarcarea setului de date
#ds <- read.spss("NIAD.sav", to.data.frame = T)
load("NIAD.RData")
# Salvarea datelor in format nativ R
save(ds, file = "NIAD.RData")

# Scindarea setului de date
ds.split <- split(x = ds, f = ds$gen)
# Calculul mediei aritmetice total si in functie de gen
mean(ds$varsta)
mean(ds.split$Masculin$varsta)
mean(ds.split$Feminin$varsta)
ds.unsplit <- unsplit(value = ds.split, f = ds$gen)

ds.split <- split(x = ds, f = ds$niv_edu)

