###

# Overview on scientifically engineered applications, maps, graphs...
# Environmental Sciences, University of Potsdam

###

library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  
  skin = "black",
  
  dashboardHeader(title = "Interactive Environmental Sciences",
                  titleWidth = 350
  ),
  
  dashboardSidebar(disable = TRUE),
  
  dashboardBody(
    
    fluidRow(
      
      #left column of the Shiny dashbboard
      column(width = 6,
             box(
               title = "Scentifically engineered applications, maps, graphs,..", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL,
               tags$p("In recent years, the potential of interactive web tools to share information is increasingly recognized and used in the 
                       scientific community. Researchers need to further harness this potential and develop easy accessible online tools that 
                       can be used in- and outside the scientific community to explore, learn, teach and communicate environmentally relevant topics. 
                       In the following, an overview of scientifically engineered online tools developed at the Institute of Environmental Sciences, University of Potsdam."
                      )
               ),
             
             box(
               title = "Hydro Explorer | Changes in river runoff all over the world", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("The Hydro Explorer is an interactive web application that enables the investigation of of more than 7000 daily resolution discharge time
                      series form the Global Runoff Data Centre (GRDC) wiht regard to changs in runoff timing and ruoff seasonality. The web app allows for a 
                      quick comparison of gauges regions, methods and time frames. A detailed description is included into the", 
                      tags$a("research artile", href = "https://doi.org/10.1002/rra.3772"), "pubblished in River Reserach and Applications"
                      ),
               tags$p("Web App:", tags$a("http://natriskchange.ad.umwelt.uni-potsdam.de:3838/HydroExplorer/", 
                                         href ="http://natriskchange.ad.umwelt.uni-potsdam.de:3838/HydroExplorer/")),
               tags$p("Source Code:", tags$a("https://github.com/ERottler/meltimr", 
                                         href ="https://github.com/ERottler/meltimr"))
               ),
             
             box(
               title = "Add Title", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("Add description"
               )
               
             )
             ),
      
      #right column of the Shiny dashboard
      column(width = 6,
             
             box(
               title = "Seca Vista | Drought Forecase Ceara (Brazil)", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("Information on Seca Vista"),
               
               tags$p("Web App:", tags$a("http://seca-vista.geo.uni-potsdam.de:3838/seca-vista-app/", 
                                         href ="http://seca-vista.geo.uni-potsdam.de:3838/seca-vista-app/")),
               tags$p("Research Article:", tags$a("https://hess.copernicus.org/articles/22/5041/2018/", 
                                                href ="https://hess.copernicus.org/articles/22/5041/2018/"))
               
             ),
             
             box(
               title = "Avalanche | NatRiskChange Task Force Report", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("In order to enable and enhace inderdisciplinary and inter-methodological team work, PhD studens of the DFG-funded
                      Research Training Group", tags$a("NatRiskChange", href = "https://www.uni-potsdam.de/en/natriskchange"),
                      "investigate recent natural disasters under real-time conditions. On 28/12/2019, a large avalanche buried several skiers
                      in the ski resort at the Val Senales Glacier, South Tyrol, Italy. The event was investigated in more detail. The examination includes
                      a compilationf and summary of the media coverage, the description of the accident based on media and avalanche reports,
                      a field trip to the site of accident indluding practical and theoretical teaching units on snow research and avalanche awareness and the analysis
                      of measruement data from a nearby climate station. The full report is available in form a Shiny dashboard."),
               
               tags$p("Dashboard:", tags$a("http://natriskchange.ad.umwelt.uni-potsdam.de:3838/avalanche/", 
                                         href ="http://natriskchange.ad.umwelt.uni-potsdam.de:3838/avalanche/")),
               tags$p("Source Code:", tags$a("https://github.com/ERottler/nrc_avalanche", 
                                             href ="https://github.com/ERottler/nrc_avalanche"))
               
             ),
             
             box(
               title = "Add Title", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("Add description")
               )
      ),
      
      column(width = 12,
             
             box(
               title = "Contact", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = F,
               
               tags$p("Should you have any questions suggestions or need more information, please do not hesitate to contact
                      the developers of the individual tools. Should you have questions regarding this Shiny dashbboard,
                      please vsit the", tags$a("repository", href = "https://github.com/ERottler/env-sci-interactive"),
                      "of this project or write an email to rottler(a)uni-potsdam.de or martinsd(a)uni-potsdam.de")
             )
             
             )
                
                
      )
    
      )
      )

server <- function(input, output, session) {
  
  
}

shiny::shinyApp(ui, server)