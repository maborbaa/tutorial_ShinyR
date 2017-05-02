
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  #textAreaInput
  textAreaInput("caption", "Caption", width = "500px"),
  verbatimTextOutput("value"),
  
  #numericInput
  numericInput("obs", "Observations:", 10, min = 1, max = 100),
  verbatimTextOutput("value")
  
))
