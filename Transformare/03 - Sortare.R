# Incarcarea setului de date
load("NIAD.RData")

# Sortarea setului de date
ds.sortat <- ds[order(ds$niv_edu, decreasing = T, method = "auto"),]; ds.sortat
