
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  v <- reactiveValues(doPlot = FALSE)
  
  observeEvent(input$go, {
    # 0 will be coerced to FALSE
    # 1+ will be coerced to TRUE
    v$doPlot <- input$go
  })
  
  observeEvent(input$tabset, {
    v$doPlot <- FALSE
  })  
  
  output$plot <- renderPlot({
    if (v$doPlot == FALSE) return()
    
    isolate({
      data <- if (input$tabset == "Uniform") {
        runif(input$unifCount, input$unifRange[1], input$unifRange[2])
      } else {
        rnorm(input$normCount, input$normMean, input$normSd)
      }
      
      hist(data)
    })
  })

})
