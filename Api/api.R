
---
  title: "Mi API con Quarto"
format: html
engine: knitr
---
  
  
library(plumber)


r <- plumb("api.R")  # Carga el script de la API
r$run(port = 8000)