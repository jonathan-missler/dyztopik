#server.R

library(shiny)

function(input, output){
  output$pers_price <- renderText({input$price})
}