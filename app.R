library(tidyverse)
library(palmerpenguins)
library(shiny)

# CREATE THE USER INTERFACE
ui <- fluidPage(
  titlePanel("Palmer Penguins"),
  sidebarLayout(
    sidebarPanel("put my widgets here",
                 radioButtons(
                   inputId = "penguin_species",
                   label = "Choose species",
                   choices = c("Adelie", "Gentoo", "Cool Chinstrap Penguins" = "Chinstrap")
                 ),
                 selectInput(
                   inputId = "pt_color",
                   label = "Select point color",
                   choices = c("Roses are red" = "red", "Violets are blue" = "blue", "Oranges are doranges" = "orange")
                 )  # ✅ Fixed misplaced parenthesis
    ),
    mainPanel("put my plots here",
              plotOutput(outputId = "penguin_plot"))
  )
)

# CREATE BACKEND
server <- function(input, output) {
  
  # Reactive function for filtering the dataset
  penguin_select <- reactive({
    penguins |>
      filter(species == input$penguin_species)  # Change species based on user input
  })
  
  # Render plot output
  output$penguin_plot <- renderPlot({
    ggplot(data = penguin_select()) +
      geom_point(aes(x = flipper_length_mm, y = body_mass_g), color = input$pt_color)  # ✅ Fixed aes issue
  })
}

# COMBINE INTO AN APP
shinyApp(ui = ui, server = server)
