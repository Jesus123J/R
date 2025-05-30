
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
  sqrt(x**3 , y**3)
  return(list(resultado = as.numeric(x) + as.numeric(y)))
}





