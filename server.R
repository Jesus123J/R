
library(plumber)

#* @param msg
#* @get /echo
function(msg = "") {
  
  print("se esta ingresando")
  list(msg = paste0("El mensaje es: ", msg))
}


#* @param x
#* @param y
#* @get /sumar
function(x, y) {
  resultado <- sqrt(x^3) + sqrt(y^3)  # Calcula la raíz correctamente
  return(list(resultado = as.numeric(resultado)))
}




