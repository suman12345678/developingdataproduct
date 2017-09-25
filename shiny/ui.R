library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("predict from iris data"),
  sidebarPanel(
    h4('INput'),
    numericInput('sepal.length', 'sepal.length', 5.1),
    numericInput('petal.length', 'petal.length', 1.4),
    numericInput('sepal.width', 'sepal.width', 3.5),
    numericInput('petal.width', 'petal.width', .2)
  ),
  mainPanel(
    h4('Species is below'),
    textOutput("species"),
    br(),
    h4('Instructions'),
    helpText("enter the length and width and the app will predict the species")
    )
))