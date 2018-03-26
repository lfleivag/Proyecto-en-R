library(shiny)
library(gds)
library(ggplot2)
library(plotly)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
#########GRAFICO PROVINCIAS###############
    output$grafico1 <- renderPlotly({
      graf1 <- data.frame(table(base$PROVINCIA))
      plot_ly(x=graf1[,1], y=graf1[,2], type = 'bar') 
############################################
      
    
  })
  
})
