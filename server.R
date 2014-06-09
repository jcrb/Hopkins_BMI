# server.R

library(shiny)

bmi <- function(taille, poids){
  taille <- taille/100
  b <- poids / (taille^2)
  round(b,1)
  
}

status <- function(bmi){
   if(bmi < 18.5)
     status <- "Underweight"
   else if(bmi >= 30)
     status <- "Obesity"
   else if(bmi >= 18.5 & bmi <= 24.9)
     status <- "Normal weigth"
   else if(bmi >= 25 & bmi <= 29.9)
     status <-"Overweigth"
  status
}

shinyServer(
  function(input, output){
    output$poids <- renderPrint(paste(input$poids,"Kg"))
    output$taille <- renderPrint(input$taille)
    output$bmi <- renderPrint(bmi(input$taille, input$poids))
  #  output$bmi <- renderPrint(round(bmi(input$taille, input$poids)), 1)
    output$status <- renderPrint(status(bmi(input$taille, input$poids)))
}
)