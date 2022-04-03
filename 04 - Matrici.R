# Crearea unei matrici
matrice <- matrix(nrow = 3, ncol = 3); matrice

# Redenumirea coloanelor si a randurilor
colnames(matrice) <- c("Var1", "Var2", "Var2"); matrice
rownames(matrice) <- c("Rand1", "Rand2", "Rand3"); matrice

# Conversia unui set de date in matrice
matrice <- as.matrix(ds); matrice

# Extragerea anumitor coloane din matrice
matrice[2, 2]
