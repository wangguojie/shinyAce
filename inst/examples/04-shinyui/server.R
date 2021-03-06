library(shiny)
library(shinyAce)

#' Define server logic required to generate simple ace editor
#' @author Jeff Allen \email{jeff@@trestletech.com}
shinyServer(function(input, output, session) {
  output$shinyUI <- renderUI({
    input$eval
    return(isolate(eval(parse(text=input$code))))
  })  
})