
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
# http://shiny.rstudio.com/gallery/
# http://shiny.leg.ufpr.br/daniel/053-navlistpanel-example/
# https://shiny.rstudio.com/reference/shiny/latest/navbarPage.html

library(shiny)

shinyUI(navbarPage(theme = "bootstrap.css",
                   "Page Title",
                   tabPanel("Panel 1",
                            navlistPanel("teste",
                                         tabPanel("First",
                                                  h3("This is the first panel"),
                                                  tabsetPanel("Panel 1.x",
                                                              tabPanel("Panel 1.1"),
                                                              tabPanel("Panel 1.2")
                                                              
                                                  )
                                         ),
                                         tabPanel("Second",
                                                  h3("This is the second panel")
                                         ),
                                         tabPanel("Third",
                                                  h3("This is the third panel")
                                         )
                              ),#navlistPanel
                            p("test3")
                            ),
                   navbarMenu("Acess",
                              tabPanel("sub-tab1"),
                              "----",
                              "Section header",
                              tabPanel("sub-tab2")
                   ),#navbarMenu
                   tabPanel("Panel 3")
))
