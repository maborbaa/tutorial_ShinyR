
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# https://shiny.rstudio.com/articles/layout-guide.html
#

library(shiny)
library(ggplot2)
#diamonds <- ggplot2
dataset <- diamonds

shinyUI(fluidPage(theme = "bootstrap.css",
                  
                  titlePanel("Tabsets"),
                  
                  sidebarLayout(
                    
                    sidebarPanel( 
                      # Inputs excluded for brevity
                    ),
                    
                    mainPanel(
                      tabsetPanel(
                        tabPanel("Plot", plotOutput("plot"),
                                 sliderInput('sampleSize', 'Sample Size', 
                                             min=1, max=nrow(dataset), value=min(1000, nrow(dataset)), 
                                             step=500, round=0)
                                 ), 
                        
                        tabPanel("Summary", 
                                 
                                 fluidRow(
                                   column(4,
                                          wellPanel(
                                          h4("Diamonds Explorer"),
                                          sliderInput('sampleSize', 'Sample Size', 
                                                      min=1, max=nrow(dataset), value=min(1000, nrow(dataset)), 
                                                      step=500, round=0)
                                          ), #wellPanel
                                          br(),
                                          wellPanel(
                                          checkboxInput('jitter', 'Jitter'),
                                          checkboxInput('smooth', 'Smooth')
                                          )#wellPanel
                                   ),
                                   column(4, offset = 1,
                                          selectInput('x', 'X', names(dataset)),
                                          selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
                                          selectInput('color', 'Color', c('None', names(dataset)))
                                   )
                                 )
                                 
                                 ), 
                        
                        tabPanel("Table", tableOutput("table"))
                      )
                    )
                  )#siderbarLayout
  
))
