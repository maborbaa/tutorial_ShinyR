
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# http://getbootstrap.com/getting-started/
# http://getbootstrap.com/css/
# reference: https://shiny.rstudio.com/articles/css.html

library(shiny)

shinyUI(fluidPage(theme = "bootstrap.css",

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout( 
    
    #position = "right",
    
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
