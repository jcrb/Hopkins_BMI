# ui.R

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Calculate Your Body Mass Index
"),
  sidebarPanel(
    h3("Measures"),
    numericInput('taille','Taille (cm)',160, max=250, min=30, step=1),
    numericInput('poids','Poids (Kg)',60, max=300, min=10, step=1)
    ),
    
  mainPanel(
    h3("Main Panel text"),
    p("Votre poids est de "),
    verbatimTextOutput("poids"),
    p("Votre taille en cm"),
    verbatimTextOutput("taille"),
    p("Your Body Max Index is"),
    verbatimTextOutput("bmi"),
    p("Your status"),
    verbatimTextOutput("status"),
    code("un peu de code")
    )
  ))