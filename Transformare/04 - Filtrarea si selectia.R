# Incarcarea setului de date
load("NIAD.RData")

# Selectarea variabilelor - Pe baza de includere
ds.1 <- ds[c("varsta", "iq")]; ds.1
ds.2 <- ds[c(1, 3:4)]; ds.2
#ds.3 <- ds[paste("item", 1:400, sep = "_")]; ds.3

# Selectarea variabilelor - Pe baza de excludere
ds.4 <- ds[c(-2, -3)]; ds.4
excluse <- names(ds) %in% c("varsta", "niv_edu"); excluse
ds.5 <- ds[!excluse]; ds.5

# Filtrarea datelor dintr-un set de date
ds.6 <- ds[1:6,]; ds.6
ds.7 <- ds[which(ds$gen == "Feminin" & ds$niv_edu == "Gimnaziu (5-8)" & ds$iq > 108),]; ds.7
ds.7 <- ds[which((ds$gen == "Feminin" & ds$iq > 108) | (ds$gen == "Masculin" & ds$iq < 103)) ,]; ds.7
ds.8 <- subset(ds, gen == "Feminin" & niv_edu == "Gimnaziu (5-8)" & iq > 108); ds.8

# Selectia aleatorie a unui subset de date
ds.9 <- ds[sample(x = 1:nrow(ds), size = 30, replace = F),]; ds.9

