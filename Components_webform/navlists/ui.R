
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# https://shiny.rstudio.com/articles/layout-guide.html
# http://shiny.rstudio.com/gallery/navbar-example.html

library(shiny)

shinyUI(navbarPage(theme = "bootstrap.css",
  "Navbar test",
                   tabPanel("Component 1",
                            
                            sidebarLayout(
                              
                              sidebarPanel(
                                radioButtons("plotType", "Plot type",
                                             c("Scatter"="p", "Line"="l")
                                )
                              ), #sidebarPanel
                              
                              mainPanel(
                                plotOutput("plot")
                              )#mainPanel
                              
                            )#sidebarLayout
                            
                            ), #Component 1
  
                   tabPanel("Component 2",
                            verbatimTextOutput("summary")
                            ), #Component 2
  
                   navbarMenu("More",
                              tabPanel("Sub-Component A",
                                       #DT::dataTableOutput("table")
                                       
                                       
                                       fluidRow(
                                         column(12,
                                                wellPanel(
                                                "Fluid 12 - A"),
                                                fluidRow(
                                                  column(6,
                                                         wellPanel(
                                                         "Fluid 6 - AA"),
                                                         fluidRow(
                                                           column(6,
                                                                  wellPanel(
                                                                  "Fluid 6 - AAA")),
                                                           column(6,
                                                                  wellPanel(
                                                                  "Fluid 6 - AAB"))
                                                         )
                                                  ),
                                                  column(width = 6,
                                                         wellPanel(
                                                         "Fluid 6 - AB")
                                                  )
                                                )
                                         )
                                       )#fluidrow
                                       
                                       
                                       ), #tabpanel sub-componente A
                              
                              tabPanel("Sub-Component B",
                                       
                                       fluidRow(
                                         column(3,
                                                radioButtons("plotType", "Plot type",
                                                             c("Scatter"="p", "Line"="l")
                                                )
                                         ),
                                         column(3,
                                                img(class="img-polaroid",
                                                    src=paste0("http://upload.wikimedia.org/",
                                                               "wikipedia/commons/9/92/",
                                                               "1919_Ford_Model_T_Highboy_Coupe.jpg")),
                                                tags$small(
                                                  "Source: Photographed at the Bay State Antique ",
                                                  "Automobile Club's July 10, 2005 show at the ",
                                                  "Endicott Estate in Dedham, MA by ",
                                                  a(href="http://commons.wikimedia.org/wiki/User:Sfoskett",
                                                    "User:Sfoskett")
                                                )
                                         )
                                       )#fluidRow
                                       
                                       ), #tabPanel sub-component B
                              tabPanel("sub-component C",
                                       
                                       fluidRow(
                                         column(4,
                                                wellPanel(
                                                "4")
                                         ),
                                         column(4, offset = 4,
                                                wellPanel(
                                                "4 offset 4")
                                         )      
                                       ),
                                       fluidRow(
                                         column(3, offset = 3,
                                                wellPanel(
                                                "3 offset 3")
                                         ),
                                         column(3, offset = 3,
                                                wellPanel(
                                                "3 offset 3")
                                         )  
                                       )#fluidrow
                                       
                                       )#tabPanel sub-component C
                              
                              )#navbarMenu
))
