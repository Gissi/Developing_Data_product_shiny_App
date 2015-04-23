library(shiny)

shinyUI(fluidPage(
  headerPanel("Interactive Shiny App to plot reggresion"),
  sidebarPanel(
    sliderInput("slider1", label = h3("number of observations in reggresion"), min = 1, max = 150, value = 75, step = 5),
    h4("your choosen number of observation is:"),
    verbatimTextOutput("inputValue"),
    sliderInput("num", label = h3("select number of players to display data table for"), min = 1, max = 10, value = 1, step = 1)
  ),
  mainPanel(
    h3('built in data linear regression'),
    
    plotOutput('newHist'),
    tableOutput('data'),
    helpText(   a("For the code for this shiny app click here", href="https://github.com/Gissi/shiny_app_fantasy/tree/master") ),
    helpText(   a("For the code for the data I wanted to display and worked locally but not when uploaded to shinyapp.io click here", href="https://github.com/Gissi/shiny_app_fantasy/tree/master") )
    
  )
  
))