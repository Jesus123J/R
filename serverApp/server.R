server = function(input , output){
  # R code to build object
  
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}