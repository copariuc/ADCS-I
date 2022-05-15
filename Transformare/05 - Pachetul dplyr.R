# Instalarea si incarcarea pachetelor necesare
if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

# Incarcarea setului de date
load("NIAD.RData")

# select - selectarea variabilelor din setul de date
# group_by - scindarea setului de date
# filter - filtreaza datele
# arrange - sorteaza datele
# mutate - creaza noi variabile prin calcul atasandu-le la cele existente
# summarize - permite agregarea datelor

# Transformarea datelor folosind dplyr
iq_norm <- rnorm(nrow(ds), mean = 100, sd = 15); iq_norm
ds.1 <- dplyr::mutate(ds, iq_norm = rnorm(nrow(ds), 100, 15)); ds.1
ds.2 <- dplyr::transmute(ds, iq_norm = rnorm(nrow(ds), 100, 15)); ds.2

# Scindarea datelor folosind dplyr
ds.3 <- dplyr::group_by(ds, gen); ds.3
ds.3 <- dplyr::ungroup(ds.3); ds.3
dplyr::summarize(ds.3, media_varsta = mean(iq))

ds %>% 
  dplyr::group_by(gen) %>% 
  dplyr::summarize(media_varsta = mean(iq))

# Sortarea datelor folosinfddplyr
ds %>% 
  dplyr::arrange(gen, desc(iq))

# Selectia variabilelor folosind dplyr
ds %>% 
  dplyr::select(varsta, iq)

ds %>% 
  dplyr::select(varsta:iq)

ds %>% 
  dplyr::select(-varsta, -iq)

ds %>% 
  dplyr::select(-contains("ed"))

# start_with - pastreaza (elimina) variabilele care incep cu caracterele prezizate
# end_with
# matches - pastreaza variabilele care corespund unui pattern
# everything - pestreaza toate variabile care nu au fost tratate anterior
ds %>% 
  dplyr::select(varsta, iq, everything())

ds.4 <- ds
colnames(ds.4) <- c("Gen", "Varsta", "Niv_Edu", "IQ"); ds.4
ds.4 <- ds.4 %>% 
  dplyr::rename(NivEdu = Niv_Edu); ds.4

# Filtrarea datelor folosind dplyr
ds %>%
  dplyr::filter(gen == "Feminin" & iq > 108)

ds %>%
  dplyr::filter(gen == "Feminin" & iq %in% c(100:105))

ds %>%
  dplyr::filter(gen == "Feminin" & !iq %in% c(100:105))

# Extragerea de subesantioane
ds %>%
  dplyr::sample_n(30, replace = F)

ds %>%
  dplyr::sample_frac(0.20, replace = F)


