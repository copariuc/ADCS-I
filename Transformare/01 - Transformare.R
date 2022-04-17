# Setarea directorului de lucru
setwd("D:/R Projects/ADCS-I/Transformare")

# Instalarea si incarcarea libariilor necesare
if(!require(foreign)) install.packages("foreign")
if(!require(car)) install.packages("car")
library(foreign); library(car)

# Incarcarea setului de date
ds <- read.spss("NIAD.sav", to.data.frame = T, use.value.labels = T)

# Generarea unei noi variabile in setul de date
ds$iq_norm <- rnorm(nrow(ds), mean = 100, sd = 15)
ds$iq_norm <- round(ds$iq_norm)
ds$iq_norm <- round(rnorm(nrow(ds), mean = 100, sd = 15))

# Recodarea unei variabilei discrete
ds$niv_edu; levels(ds$niv_edu)
temp <- as.numeric(ds$niv_edu); temp

range(temp)


# 1 - Fara studii
# 2 - Primare
# 3 - Gimnaziu
### 4 - Scoli de arte si meserii
# 4 - Liceu (5)
# 5 - Bacalaureat (6)
# 6 - Licenta (7)
# 7 - Master (8)
# 8 - Doctorat (9)
# 9 - Postdoctorale (10

# Incrementarea scorurilor necesare
temp[temp == 5] <- 6
temp[temp == 4] <- 5; temp

# Stabilim noile categorii
niveluri <- c("Fara studii", 
              "Primare (1-4)",
              "Gimnaziu (5-8)",
              "Scoala de arte si meserii",
              "Liceu",
              "Bacalaureat",
              "Licenta",
              "Masterat",
              "Doctorat",
              "Postdoctorale")
range(temp)
temp <- c(temp, seq(1:10)); temp

# Transformarea variabilei in factor
temp <- ordered(temp, labels = niveluri); temp
temp <- temp[1:nrow(ds)]; temp
# Suprascrierea variabilei din setul de date
ds$niv_edu <- temp

# Recodarea folosind pachetul car
temp <- as.numeric(ds$niv_edu); temp
#temp[temp == 5] <- 6
#temp[temp == 4] <- 5
temp <- recode(temp, "4=5; 5=6"); temp
niveluri <- c("Fara studii", 
              "Primare (1-4)",
              "Gimnaziu (5-8)",
              "Scoala de arte si meserii",
              "Liceu",
              "Bacalaureat",
              "Licenta",
              "Masterat",
              "Doctorat",
              "Postdoctorale")
temp <- c(temp, seq(1:10)); temp
temp <- ordered(temp, labels = niveluri); temp
temp <- temp[1:nrow(ds)]; temp
ds$niv_edu <- temp
