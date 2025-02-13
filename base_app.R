library(shiny)

# Define UI define
ui <- fluidPage(
  # Application title
  titlePanel("Understanding Drought Risk for Two California Counties"),
  
########### DROUGHT INTRO - SL ###########
  tabsetPanel(
    tabPanel("Background", 
             h3("Understanding Drought Risk in California"),
             tags$img(src = "la_photo.jpg", alt = "Sample Image", width = 1100, height = 400),
             p("Photo by DAVID ILIFF. License: CC BY-SA 3.0"),
             
             tags$br(), # Add a line break
             
             
             p("Due to its dry Mediterranean climate, California is particularly vulnerable to drought. 
               Droughts are a natural part of the climate system, but they can have serious impacts on water supply, agriculture, and ecosystems. 
               In recent years, California has experienced several severe droughts, including a five-year drought from 2012 to 2016. 
               Understanding the factors that contribute to drought risk is essential for effective water management and climate adaptation."),
             
             tags$br(), # Add a line break
               
             p("This Shiny app provides an interactive exploration of drought risk for two California counties: Los Angeles and El Dorado. 
               The app includes visualizations of climate trends, a principal component analysis of climate variables, and an environmental justice analysis. 
               Use the tabs above to navigate through the different sections of the app."),
             
             tags$br(), # Add a line break
             
             p("The [ INSERT DATA TYPE ] data was sourced from [ INSERT DATA SOURCE ] - repeat for all data as is input into the project")
    ),
    
############ DROUGHT MAP - TB ############
    tabPanel("Drought Map", 
             h3("Welcome to Tab 2"),
             p("This is the content for the second tab.")
    ),

############ CLIMATE FACTORS - SL ############
    tabPanel("Climate Trends", 
             h3("Understanding Climate Trends in Two California Counties"),
             p("Understanding drought requires an examination of a region’s overall climate. 
               Yearly precipitation (rain and snow), temperature, and soil moisture all contribute to drought risk. 
               To explore these trends for Los Angeles and El Dorado counties, select a county and a climate variable from the dropdown menus below."),
             
             selectInput("county",
                         label = "Select County",
                         choices = c("Los Angeles", "El Dorado")),
             selectInput("climate_factor",
                         label = "Select Climate Variable",
                         choices = c("Temperature", "Precipitation", "Runoff", "Soil Moisture", "Snow Water Equivalent")),
             plotOutput("climate_plot")
    ),

############ PCA - RB ############
    tabPanel("Principal Component Analysis", 
             h3("Welcome to Tab 4"),
             p("This is the content for the fourth tab.")
    ),

############ EJ - RB + TB ############
    tabPanel("Environmental Justice", 
             h3("Welcome to Tab 5"),
             p("This is the content for the fifth tab.")
    )
  )
)

# Define server logic
server <- function(input, output) {
  # Add any server-side logic here if necessary
}

# Run the application
shinyApp(ui = ui, server = server)
