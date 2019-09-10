#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output){
    output$plot1 <- renderPlot({
        distype <- input$Distribution
        size <- input$sample
        if(distype == 'Normal') {
            randomvar <- rnorm(size, mean= as.numeric(input$Mean), sd= as.numeric(input$sd))
        }
        else {
            randomvar <- rexp(size, rate = 1 / as.numeric(input$lambda))
        }
        
        hist(randomvar, col = "blue")
        
    })
})