# Modul obiectelor
varsta <- 25
mode(varsta)
varsta <- c(12, 21, 9, 18)
varsta <- c("12", "21", "9", "18")
inscrisi <- c(TRUE, FALSE, TRUE, TRUE)
mode(inscrisi)
nume <- c("Ion", "Vasile", "Viorica", "Ana")
mode(nume)

# combinarea modurilor
numar.logic <- c(12, 7, TRUE, 9, FALSE)
numar.text <- c(8, 5, "Ion", 9, "Dana")
logic.text <- c(T, "Ion", F, "Dana")

# Testarea sirului de date
is.numeric(numar.logic)
is.numeric(numar.text)
is.character(numar.logic)
is.character(numar.text)
is.logical(inscrisi)

# functiile mode si class
mode(inscrisi)
class(inscrisi)

# Testarea obiectelor pentru vectori
is.vector(inscrisi)
is.vector(nume)

# Introducerea interactiva a valorilor in consola
varsta <- scan()

# Utilizarea indecsilor
varsta[3]
varsta[2]
varsta[2:3]
varsta[1:3]
varsta[c(1:2, 4)]

# Vectorii etichetati
varsta <- c(Ion = 12, Vasile = 21, Viorica = 9, Ana = 18)
mode(varsta); class(varsta)
names(varsta)
