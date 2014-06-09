# ui.R

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Data science FTW"),
  sidebarPanel(
    h3("Sidebar Text")
    ),
  mainPanel(
    h3("Main Panel text")
    )
  ))