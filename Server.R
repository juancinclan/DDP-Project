library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("Fiji Quakes Plot per location"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "How many quakes should be plotted?",
                   value=500, min=1, max=1000, step=1),
    ),
    mainPanel(
      h3("Quakes magnitude mean"),
      textOutput("mean1"),
      h3("Quakes magnitude Standard deviation"),
      textOutput("sd1"),
      h3("Fiji's quakes are plotted by longitude and lattitude. The different coloration that is appretiated is due the number of station that reported the quake. This will be useful in a map of Fiji in order to locate where it started."),
      plotlyOutput("plot1")
    )
  )
))
