library(shiny)
ui <- fluidPage(
  #input element
  sliderInput(inputId = "num" ,
              label = "No input required",
              value = 25,
              min = 0,
              max = 300
              ),
  plotOutput("hist")
)