## firstly loading the shiny library
library(shiny)
library(shinythemes)

library(shiny)

ui <- fluidPage(
  titlePanel("This is a demo app"),
  sidebarLayout(
    sidebarPanel(
      textInput("txtInput","What is your name"),
      selectInput("slctInput","What country are you from?",choices = c("Tanzania","Kenya","Uganda"))
    ),
    mainPanel(
      paste("You details are as follows:"),
      textOutput("txtOutput"),
      textOutput("countryOutput")
    )
  )
)

server <- function(input, output, session) {
  output$txtOutput <- renderText({
    paste(input$txtInput)
  })
  output$countryOutput <- renderText({
    paste(input$slctInput)
  })
  
}

shinyApp(ui, server)
