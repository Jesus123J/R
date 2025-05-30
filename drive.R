
install.packages('rsconnect')

rsconnect::setAccountInfo(name='mateserver',
                          token='B873B687A6397E604A003A8ED307E810',
                          secret='AfrANbehZGbgd+1QI+RjxY2tEZMRI55rDV7Ui4rR')

library(rsconnect)
rsconnect::deployApp("C:/Users/Jesus Gutierrez/Documents/git project/R/Api")

