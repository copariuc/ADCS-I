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
colnames(ds) <- c("Nume", "Gen", "Varsta", "Grade")

# Strings as factor
mode(ds$Nume); class(ds$Nume)
mode(ds$Gen); class(ds$Gen)

gen <- c("Masculin", "Feminin", "Masculin", "Masculin", "Feminin")
grade <- c('Asistent', 'Lector', 'Lector', 'Conferentiar', "Lector")
ds <- data.frame(gen, varsta, grade)
mode(ds$gen); class(ds$gen)
mode(ds$grade); class(ds$grade)
ds <- data.frame(gen, varsta, grade, stringsAsFactors = T)
ds$gen; ds$grade
ds$gen <- factor(ds$gen, levels = c("Masculin", "Feminin"))
ds$grade <- ordered(ds$grade, levels = c("Asistent", "Lector", "Conferentiar"))

# Crearea unui set de date gol
ds.gol <- data.frame(
  "Numele" = character(),
  "Gen" = character(),
  "Varsta" = integer(),
  "Grade" = character())
ds.gol

# Afisarera structurii unui set de date
str(ds)




