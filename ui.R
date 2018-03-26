
library(shiny)
library(gds)
library(ggplot2)
library(plotly)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Vehículos matriculados en 2014"),
  HTML('<b> <font color= 0C3F6E size = 3> Fuente:  </font> </b> Datos obtenidos por el Instituto Nacional de 
       Estadísticas y Censos respecto al número total de vehículos matriculados en Ecuador en el 
       año 2014.'),  
  tags$br(),
  HTML('<b> <font color= 0C3F6E size = 3> Objetivos:  </font> </b> Desarrollar una herramienta útil para conocer
       el número, características y diversos datos acerca de los vehículos que circulan en el Ecuador.'),
  sidebarLayout(
    sidebarPanel('Seleccione la categoria que desea consultar',
                 selectInput(inputId='opciones1',
                             label='Escoja una opción',
                             choices= Opciones)
  
), 
mainPanel('Grafico de la opcion escojida',
          
          
          plotlyOutput("grafico1")
)
)))
  
