#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(maps)
library(mapproj)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
            sliderInput(inputId = "inFh",
                        label = "Father's height (cm):",
                        value = 150,
                        min = 150,
                        max = 220,
                        step = 1),
            
        
            h3("Buttons"),
            
            
            actionButton("action", "Action"),
            br(),
            br(), 
            checkboxGroupInput("checkGroup", 
                               h3("Checkbox group"), 
                               choices = list("Choice 1" = 1, 
                                              "Choice 2" = 2, 
                                              "Choice 3" = 3),
                               selected = 1),
            dateRangeInput("dates", h3("Date range")),
        
            br(),
            submitButton("Submit"),
            h3("Help text"),
            helpText("Note: help text isn't a true widget,", 
                     "but it provides an easy way to add text to",
                     "accompany other widgets."),
            numericInput("num", 
                         h3("Numeric input"), 
                         value = 1),
            radioButtons("radio", h3("Radio buttons"),
                         choices = list("Choice 1" = 1, "Choice 2" = 2,
                                        "Choice 3" = 3),selected = 1),
            selectInput("select", h3("Select box"), 
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3), selected = 1),
    ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
