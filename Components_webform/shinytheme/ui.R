
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# https://rstudio.github.io/shinythemes/
#http://bootswatch.com/ - themes(cerulean, cosmo, cyborg, darkly, flatly, journal, lumen, paper, readable, sandstone, 
#  simplex, slate, spacelab, superhero, united, yeti)
# choose in this model: https://gallery.shinyapps.io/117-shinythemes/

library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme('lumen'),

  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  sidebarPanel(
    textInput("txt", "Text input:", "text here"),
    sliderInput("slider", "Slider input:", 1, 100, 30),
    actionButton("action", "Button"),
    actionButton("action2", "Button2", class = "btn-primary")
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Tab 1"),
      tabPanel("Tab 2")
    )
  )

 
  
  
))
