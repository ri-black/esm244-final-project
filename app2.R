library(tidyverse)
library(palmerpenguins)
library(shiny)

# CREATE THE USER INTERFACE
ui <- fluidPage(
  titlePanel("Exploring Climate Variables in Los Angeles and El Dorado County"),
  sidebarLayout(
    sidebarPanel("Understanding Climate",
                 radioButtons(
                   inputId = "county",
                   label = "Choose County",
                   choices = c("Los Angeles County", "El Dorado County")
                 ),
                 selectInput(
                   inputId = "pt_color",
                   label = "Select Desired Climate Variable",
                   choices = c("Precipitation", "Temperature", "Snow Water Equivalent", "Stream Discharge", "Reservoir Water Levels", "Soil Moisture")
                 )  # ✅ Fixed misplaced parenthesis
    ),
    mainPanel("Plot of Desired Climate Variable",
              plotOutput(outputId = "penguin_plot"),
              h3("Summary Table"),
              tableOutput(outputId = "penguin_table") 
    )
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
  
  penguin_sum_table <- reactive({
    penguin_summary_df <- penguins |>
      filter(species == input$penguin_species) |>
      group_by(sex) |>
      summarize(mean_flop = mean(flipper_length_mm, na.rm = TRUE),
                mean__mass = mean(body_mass_g, na.rm = TRUE))
  })
  
  output$penguin_table <- renderTable({
    penguin_sum_table()
  })
}

# COMBINE INTO AN APP
shinyApp(ui = ui, server = server)
 