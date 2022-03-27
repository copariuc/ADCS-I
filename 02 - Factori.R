# Factori neordonati - variabile nominale
gen <- c("Masculin", "Feminin", "Masculin", "Masculin", "Feminin")
mode(gen); class(gen)
gen <- factor(gen, levels = c("Masculin", "Feminin"))
as.numeric(gen)

# Factori ordonati - cariabile ordinale
grade <- c('Asistent', 'Lector', 'Lector', 'Conferentiar', "Lector")
grade <- factor(grade, ordered = T, levels = c("Asistent", "Lector", "Conferentiar")); grade
grade <- ordered(grade, levels = c("Asistent", "Lector", "Conferentiar")); grade

# Afisarea valorilor si a categoriilor unui factor
as.numeric(grade)
levels(grade)

# Situatia 1
grade <- c(1, 2, 2, 3, 2); grade
grade <- ordered(grade, labels = c("Asistent", "Lector", "Conferentiar"))
is.factor(grade); grade
