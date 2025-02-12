ui <- fluidPage(
  theme = bs_theme(bootswatch = 'cerulean'),
  
  titlePanel('Southern California Groundwater'),
  tabsetPanel(
    
    tabPanel( ######################## INTRO TAB - SAM  #############################
              icon("home"),
              
              tags$img(src="clara.jpg", width="100%",height="360px", align = "justify"),
              p(em("The Santa Clara River, Ventura County. Photo Credit: The Nature Conservancy.", style = "font-size:12px")),
              hr(),
              
              fluidPage(
                fluidRow( ### start fluidRow 1
                  column(width=8,
                         h4(strong("Purpose"), style="text-align:justify;color:#FFFFFF;background-color:#003366;padding:15px;border-radius:10px"),
                         p("This interactive tool explores patterns in groundwater depth and groundwater quality
                              and socioeconomic factors in Southern California counties."), # End paragraph 1 
                         br(), # Line break
                         
                         h4(strong("Background"), style="text-align:justify;color:#FFFFFF;background-color:#003366;padding:15px;border-radius:10px"),
                         includeMarkdown('background.md')
                         
                  ), ### end column 
                  
                  
                  column(style="text-align:justify;color:#003366;background-color:#6699CC;padding:15px;border-radius:10px",
                         br(),
                         tags$img(src="pump.jpeg", width="455px",height="320px", align = "justify"), 
                         br(),
                         p(em("Credit: California Department of Water Resources.", style="text-align:justify;font-size:12px")),
                         br(),
                         
                         tags$img(src="monitor.jpeg", width="455px",height="320px", align = "justify"), 
                         br(),
                         p(em("Credit: California Department of Water Resources.", style="text-align:justify;font-size:12px")),
                         width=4,
                  ) ### end column 
                ), ### end fluidRow 1
                hr(),
                
                
                fluidRow( ### start fluidRow 2
                  
                  column(width=4, 
                         tags$img(src="simple_fig.jpeg", width="350px",height="300px", align = "justify"), 
                         p(em("Figure 1: Groundwater and Water Table diagram", style="text-align:justify;font-size:12px")),
                         p(em("Photo Credit: Cornell University Northeast Regional Climate Center", style="text-align:justify;font-size:12px")),
                  ), ### end column
                  
                  column(width=4, 
                         tags$img(src="hydro_cycle.jpeg", width="500px",height="300px", align = "justify"),  
                         p(em("Figure 2: The Hydrologic Cycle", style="text-align:justify;font-size:12px")), 
                         p(em("Photo Credit: Lumen Learning - Hydrology Module", style="text-align:justify;font-size:12px"))
                  ) ### end column
                ), ### end fluidRow 2
                hr(),
                
                
                fluidRow( ### start fluidRow 3
                  column(width=8,
                         h4(strong("Website Content"), style="text-align:justify;color:#FFFFFF;background-color:#003366;padding:15px;border-radius:10px"),
                         p(" This website is comprised of three main tabs:"),
                         p(tags$b("Tab 1 - Groundwater Depth")), 
                         p("This analysis explores the currents trends in groundwater depth in Southern California counties from 1985 to 2023."),
                         p(tags$b("Tab 2 - Groundwater Quality")),
                         p("This analysis explores chemical pollutants impacting groundwater."),
                         p(tags$b("Tab 3 - Environmental Justice")),
                         p("This analysis shows socioeconomic variables mapped by percentile in each county."),
                         p(tags$b("Tab 4 - Sustainable Groundwater Management Act (SGMA 2014)")),
                         p("This analysis shows projected depth to groundwater and explains SGMA and potential solutions to mitigate groundwater depletion."),
                         br(), # Line break
                         
                         h4(strong("Data Source"), style="text-align:justify;color:#FFFFFF;background-color:#003366;padding:15px;border-radius:10px"),
                         
                         p(strong("Groundwater depth and water quality data:")),
                         p("The Groundwater Ambient Monitoring and Assessment (GAMA) Program is California's comprehensive 
                            groundwater quality monitoring program that was created by the State Water Resources Control Board 
                            (State Water Board) in 2000. It was later expanded by Assembly Bill 599 - the Groundwater Quality 
                            Monitoring Act of 2001. AB 599 required the State Water Board, in coordination with an Interagency 
                            Task Force (ITF) and Public Advisory Committee (PAC) to improve statewide comprehensive groundwater 
                            monitoring and increase the availability of groundwater quality information to the public."),
                         
                         
                         p(strong("Socioeconomic Data:")),
                         p("CalEnviroScreen is a screening methodology that can be used to help identify California communities 
                              that are disproportionately burdened by multiple sources of pollution. It was produced in response to 
                              Senate Bill (SB) 535 (De León, Chapter 830, Statutes of 2012), which established initial requirements 
                              for minimum funding levels to “Disadvantaged Communities” (DACs). The legislation also gives CalEPA the 
                              responsibility for identifying those communities, stating that CalEPA’s designation of disadvantaged 
                              communities must be based on “geographic, socioeconomic, public health, and environmental hazard criteria”."),
                         
                         p(strong("County Shapefile Data:")),
                         p("This data was sourced from the US Census Bureau's Master Address File / Topologically Integrated 
                            Geographic Encoding and Referencing (MAF/TIGER) Database (MTDB). The county boundaries are current as of January 2015."),
                         
                  ), ### end column 
                  
                  column(style="text-align:justify;color:#003366;background-color:#6699CC;padding:15px;border-radius:10px",
                         br(), 
                         tags$img(src="GWBasins.JPG", width="455px",height="470px", align = "justify"), 
                         br(),
                         p(em("Map of California Groundwater Basins. Credit: California Department of Water Resources.", style="text-align:justify;font-size:12px")),
                         br(), 
                         
                         tags$img(src="swrcb_logo.png", width="300px",height="100px", align = "justify"), 
                         br(),
                         br(),
                         br(),
                         tags$img(src="calenviroscreenlogo.png", width="400px",height="150px", align = "justify"), 
                         br(),
                         width=4,
                  ) ### end column
                ), ### end fluidRow 3
              ), ### end fluidPage
              br(),
              p(em("Developed by Natalie Mayer, Chelsea Sanford, and Madi Calbert"), style="text-align:justify;color:#FFFFFF;background-color:#003366;padding:15px;border-radius:10px"),
              
              tags$img(src="water-1.jpg", width="100%",height="150px", align = "justify"),
              br(),
              br()
              
              
    ), 
    
    ########################### MAP TAB - Thuy-Tien ##############################
    
    
    ########################### GRAPHS TAB - Sam ##############################
    
    ########################### PCA TAB - Riley ##############################
    
    ########################### EJ TAB - Riley ##############################
    
    
    
    
    tabPanel( ########################## start tab 2 ################################