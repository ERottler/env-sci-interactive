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
               title = "Seca Vista | Drought Forecase Ceara (Brazil)", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("SecaVista provides monthly meteorological and hydrological drought severity forecasts with a
lead time of 8 months for the state of Ceará, Brazil. Meteorological drought severity is represented with the Standardized Precipitation Index (SPI) and with a Rainfall Anomaly (RA). Hydrological drought severity was defined as the mean storage level of reservoirs.
The forecasts are based on an ensemble of the ECHAM4.6 Global Circulation Model (GCM) with
20 ensemble members. Since the spatial resolution of ECHAM4.6 is too coarse to provide detailed information for the state of Ceará, and since such atmospheric models are usually systematically biased compared to ground observations, we apply Empirical Quantile Mapping (EQM)
to adjust the ECHAM4.6 ensemble to the local scale using observations from a meteorological station network. EQM improves systematic biases throughout the statistical distribution of
the variables modelled by the ECHAM4.6 model (i.e. temperature and precipitation) by training
mapping functions based on the empirical cumulative distributions of the observed and modelled variables for each meteorological station in hindcast mode and then applied to forecasts of 8-month lead time. This way, forecasts of the ECHAM4.6-ensemble are downscaled to the
local meteorological network."),
               
               tags$p("Web App:", tags$a("http://seca-vista.geo.uni-potsdam.de:3838/seca-vista-app/", 
                                         href ="http://seca-vista.geo.uni-potsdam.de:3838/seca-vista-app/")),
               tags$p("Research Article:", tags$a("https://hess.copernicus.org/articles/22/5041/2018/", 
                                                href ="https://hess.copernicus.org/articles/22/5041/2018/"))
               
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
               title = "Buhayra | A prototype product for presenting distributed water storage in a large reservoir network", collapsible = T,  status = NULL, solidHeader = TRUE,  width = NULL,
               
               tags$p("Due to frequent cloud cover, continuous monitoring using optical satellite data does not achieve
complete coverage of dense reservoir networks typical of semi-arid regions. Only synthetic aperture radar (SAR) remote sensing systems like Sentinel-1 enable a consistent detection through
clouds, and with some limitations, through rainfall. Since the launch of Sentinel-1 mission, SAR
data with reasonable resolution is available through ESA’s API with low latency. This enables the
frequent and efficient retrieval of SAR data for large swaths of land surface. After data retrieval,
reservoirs must be classified, georeferenced and collected into a geospatial database.
Buhayra is a prototype application for obtaining water extent of small reservoirs in semi-arid
regions from satellite data in real-time. It collects, filters and processes weekly reservoir extents
from Sentinel-1 for northeast Brazil and stores this geo-referenced information in a structured
data model. Since August 2020 a demo application runs in a test server.
The current database schema enables geospatial queries by a map-server. The map-server can
efficiently render large amounts of watermasks and serve them to a web application."),
               tags$p("Dashboard:", tags$a("https://seca-vista.geo.uni-potsdam.de/buhayra-app/", 
                                         href ="https://seca-vista.geo.uni-potsdam.de/buhayra-app/")),
               tags$p("Source Code:", tags$a("https://github.com/jmigueldelgado/buhayra-app", 
                                             href ="https://github.com/jmigueldelgado/buhayra-app"))


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
