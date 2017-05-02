
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      tabsetPanel(id = "tabset",
                  tabPanel("Uniform",
                           numericInput("unifCount", "Count", 100),
                           sliderInput("unifRange", "Range", min = -100, max = 100, value = c(-10, 10))
                  ),
                  tabPanel("Normal",
                           numericInput("normCount", "Count", 100),
                           numericInput("normMean", "Mean", 0),
                           numericInput("normSd", "Std Dev", 1)
                  )
      ),
      actionButton("go", "Plot")
    ),
    mainPanel(
      plotOutput("plot")
    )
  )
 
))
