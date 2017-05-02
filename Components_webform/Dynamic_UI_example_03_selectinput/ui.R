
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  selectInput("company", "Choose a Company:",
              list(`Company` = c("FAZENDA SANTA HELENA", "FAZENDA CACHOEIRA", "FAZENDA SÃO MANOEL", "FAZENDA DO LAGO/SÃO JOÃO", "CORPAL AGROPECUÁRIA", "AGROPECUÁRIA AH", "FAZENDA SANTA FÉ", "SANTA HELENA", "FAZENDA ELDORADO/MARCA AGROPECUÁRIA", "FAZENDA SÃO LUIZ CONFINAMENTO CARPA CIBRAPA", "CONFINAMENTO GRANJA MANTIQUEIRA", "CONFINAMENTO AGROPEVA", "FAZENDA SANTO ANTÔNIO", "BOITEL CHAPARRAL"))
  ),
  textOutput("result")
))
