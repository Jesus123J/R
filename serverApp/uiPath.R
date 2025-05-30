
library(DBI)
library(RMySQL)
library(plumber)

# Función para conectar a MySQL
conectar_db <- function() {
  dbConnect(RMySQL::MySQL(),
            dbname = "db_uni_notes",
            host = "localhost",  # Cambia por la IP del servidor si no es local
            user = "root",
            password = "",
            port = 3306)
}

# Conectar a la base de datos
con <- conectar_db()

#* @apiTitle API de Account
#* @apiDescription Endpoints para obtener la lista de usuarios y su promedio.

#* @get /listar
#* @response 200 Returns all users from the account table
function() {
  print('jjj')
  query <- "SELECT * FROM account"
  dbGetQuery(con, query)
}

#* @param columna 
#* @get /promedio
#* @response 200 Returns the average of the specified column
function(columna = "id") {
  query <- paste0("SELECT AVG(", columna, ") AS promedio FROM account")
  dbGetQuery(con, query)
}
