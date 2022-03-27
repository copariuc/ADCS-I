# Combinarea vectorilor in set de date
gen; grade
nume <- c("Ion", "Ana", "Dan", "Sandu", "Dorina")
varsta <- c(24, 35, 36, 41, 30)
ds <- data.frame(nume, gen, varsta, grade)

# Modificarea setului de date
fix(ds)

# Apelarea variabilelor dintr-un set de date
ds$varsta
ds$varsta[4]
ds[2, 3] # ds[rand, coloana]
ds[2:4, 3]
ds[2, 1:3]

# Modificarea numelui variabilelor
names(ds)
head(ds); tail(ds)
colnames(ds) <- c("Nume", "Gen", "Varsta", "Grade", "Salariu")

# Strings as factor
