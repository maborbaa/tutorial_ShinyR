
setwd("D:/@Tech/BeefTraderMVP/r/pkgBeefTraderMVP/Confinamento_versao 1.0/Resultados_lucro")
data_sets <- read.csv("company.csv", head=T, sep=";")

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Drop-down selection box for which data set
  output$choose_dataset <- renderUI({
    selectInput("dataset", "Data set", as.list(data_sets))
  })
  
  # Check boxes
  output$choose_columns <- renderUI({
    # If missing input, return to avoid error later in function
    if(is.null(input$dataset))
      return()

    # Get the data set with the appropriate name
    dat <- get(input$dataset)
    colnames <- names(dat)

  })

  # Output the data
  output$data_table <- renderTable({
    # If missing input, return to avoid error later in function
    if(is.null(input$dataset))
      return()

    # Get the data set
    dat <- get(input$dataset)
    
  })

})
