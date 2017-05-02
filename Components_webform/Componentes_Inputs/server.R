
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  #textAreaInput
  output$value <- renderText({ input$caption })
  
  #numericInput
  output$value <- renderText({ input$obs })

})
