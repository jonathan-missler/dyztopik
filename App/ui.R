#ui.R

library(shiny)

fluidPage(
  numericInput(
  inputId = 'pers_price',
  label = 'Enter your price',
  value = '0'
  ),
  textOutput('pers_price')
)
