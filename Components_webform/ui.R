
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
 
  headerPanel(""),
  
  sidebarPanel(
    uiOutput("choose_dataset")
  ),
  
  mainPanel(
    #tableOutput("data_table")
  )
  
 )
)
