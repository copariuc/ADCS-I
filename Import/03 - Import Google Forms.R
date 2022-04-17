# Instalarea pachetelor necesare
if(!require(googledrive)) install.packages("googledrive")
if(!require(googlesheets4)) install.packages("googlesheets4")

library(googledrive); library(googlesheets4)

# Autentificarea la contul Google
drive_auth(); gs4_auth(token = drive_token()); gs4_user()

# Identificarea foii de calcul ce urmeaza a fi preluata
drive_find(type = "spreadsheet")
fisier <- drive_get("DT 4"); id.fisier <- as_sheets_id(fisier)

# Citirea datelor din fisierul cu ID-ul resspectiv
ds <- read_sheet(id.fisier)
