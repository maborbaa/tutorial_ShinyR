
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(theme = "bootstrap.css",

                  titlePanel("Hello Shiny!"),
                  #title = "test fluidRow",
                  #hr(), #line
                  fluidRow(
                    
                    
                    column(4,
                           wellPanel(h4("Layout Panel"),
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           )       
                    ),
                    
                    column(4, offset = 1,
                           #plotOutput("distPlot"),
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           ) 
                    ),
                    br(),
                    column(4,
                           #plotOutput("distPlot"),
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           ) 
                    ),
                    
                  #),
                  #fluidRow(
                    
                    column(4,
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           )       
                    ),
                    
                    column(4,
                           #plotOutput("distPlot"),
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           ) 
                    ),
                    column(4,
                           #plotOutput("distPlot"),
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           ) 
                    ),
                    
                  #),
                  #fluidRow(
                    
                    column(4,
                           wellPanel(
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           )       
                    ),
                    
                    column(4, 
                           #plotOutput("distPlot"),
                          
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500)
                           
                    ),
                    
                    column(4,
                           wellPanel(
                           #plotOutput("distPlot"),
                           
                             sliderInput("obs", "Number of observations:",  
                                         min = 1, max = 1000, value = 500),
                           br(),
                           #wellPanel(
                           checkboxInput('jitter', 'Jitter'),
                           checkboxInput('smooth', 'Smooth')
                           )
                           
                    )
                    
                  )
))
