#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("My Developing Data Products Week 4 Project"),
  sidebarLayout(
    sidebarPanel(
      selectInput("Distribution", "Please Select Distribution Type =", choices = c("Normal", "Exponential")),
      sliderInput("sample", "Please Select Sample size =", min = 100, max=5000, step=100, value=1000),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("Mean", "Enter Mean", value=10),
                       textInput("sd", "Enter Standard Deviation", value=5)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("lambda", "Enter Lambda", value=1))
      
    ),
    mainPanel(
      plotOutput("plot1")
    )
    
  )
))
