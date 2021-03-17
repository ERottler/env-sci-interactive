###

# Overview on scientifically engineered applications, maps, graphs...
# Environmental Sciences, University of Potsdam

###

library(shiny)
library(shinydashboard)
library(shinyWidgets)

ui <- dashboardPage(
  
  # skin = "black",
  
  
  dashboardHeader(title = "Inte-R-active Environmental Sciences - Potsdam/Berlin",
                  titleWidth = 550
  ),
  
  dashboardSidebar(disable = TRUE),
  
  dashboardBody(
    
    tags$head(tags$style(HTML('
                         
      /* logo */
      .skin-blue .main-header .logo {
      background-color: #000000;
      color:#FFFFFF;
      }
                              
      /* logo when hovered */
      .skin-blue .main-header .logo:hover {
      background-color: #000000;
      }
                              
      /* navbar (rest of the header) */
      .skin-blue .main-header .navbar {
      background-color: #000000;
      }
                              
      .main-header .logo {
      font-family: sans-serif;
      font-weight: bold;
      font-size: 16px;
      }

      /* body */
      .content-wrapper, .right-side {
      background-color: #333333;
      text-align: justify;
      font-family:  sans-serif;
      font-size: 14px;
      }

      .box.box-solid.box-primary>.box-header {
      color:#6699CC;
      background:#000000
      }

      .box.box-solid.box-primary{
      border-bottom-color: #000000;
      border-left-color:#000000;
      border-right-color:#000000;
      border-top-color:#000000;
      background:#333333;
      color:#FFFFFF
      }

      .box.box-solid.box-info>.box-header {
      color:#669900;
      background:#000000
      }

      .box.box-solid.box-info{
      border-bottom-color: #000000;
      border-left-color:#000000;
      border-right-color:#000000;
      border-top-color:#000000;
      background:#333333;
      color:#FFFFFF
      }

      .box.box-solid.box-warning>.box-header {
      color:#FFCC33;
      background:#000000
      }

      .box.box-solid.box-warning{
      border-bottom-color: #000000;
      border-left-color:#000000;
      border-right-color:#000000;
      border-top-color:#000000;
      background:#333333;
      color:#FFFFFF
      }

      .box.box-solid.box-danger>.box-header {
      color:#663399;
      background:#000000
      }

      .box.box-solid.box-danger{
      border-bottom-color: #000000;
      border-left-color:#000000;
      border-right-color:#000000;
      border-top-color:#000000;
      background:#333333;
      color:#FFFFFF
      }
      .box.box-solid.box-success>.box-header {
      color:#CC3333;
      background:#000000
      }

      .box.box-solid.box-success{
      border-bottom-color: #000000;
      border-left-color:#000000;
      border-right-color:#000000;
      border-top-color:#000000;
      background:#333333;
      color:#FFFFFF
      }

    '))),
    
    
    tags$head(tags$style(HTML("a {color: #669999}"))),
    

    tags$h3("A short overview on", align = "center", style="color: #FFFFFF"),
    tags$h1("Scientifically engineed applications, maps, graphs,...using", tags$em(tags$b("R"), style="color: #6699CC"), align = "center", style="color: #FFFFFF"),
    
    br(),
    
    tags$h4("In recent years, the potential of interactive web tools to share information is increasingly recognized and used in the 
             scientific community. Researchers need to further harness this potential and develop easy accessible online tools that 
             can be used in- and outside the scientific community to explore, learn, teach and communicate environmental issues. 
             In the following, an overview of scientifically engineered interactive tools developed by environmental researchers in Potsdam/Berlin
             using R. This compilation of available software hopefully strengthens networks among researchers,
             inspires new ideas and helps to build up supportive structures for researchers interested in developing interactive applications.", align = "center", style="color: #FFFFFF"),
    
    br(),
    br(),
    
    fluidRow(
      
      #left column of the Shiny dashbboard
      column(width = 6,
             box(
               title = "Hydro Explorer | Changes in river runoff all over the world", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               
               tags$p("The Hydro Explorer is an interactive web application that enables the investigation of of more than 7000 daily resolution discharge time
                      series form the Global Runoff Data Centre (GRDC) wiht regard to changs in runoff timing and ruoff seasonality. The web app allows for a 
                      quick comparison of gauges regions, methods and time frames. A detailed description using examples from the Rhine River basin is included into the", 
                      tags$a("research article", href = "https://doi.org/10.1002/rra.3772"), "pubblished in River Reserach and Applications."
                      ),
               tags$p("Web App:", tags$a("http://natriskchange.ad.umwelt.uni-potsdam.de:3838/HydroExplorer/", 
                                         href ="http://natriskchange.ad.umwelt.uni-potsdam.de:3838/HydroExplorer/")),
               tags$p("Source Code:", tags$a("https://github.com/ERottler/meltimr", 
                                         href ="https://github.com/ERottler/meltimr"))
             ),
             
             box(
               title = "datacleanr | Interactive and Reproducible Data Cleaning", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               
               tags$p("datacleanr is a flexible and efficient tool for interactive data cleaning, and is inherently
                      interoperable, as it seamlessly integrates into reproducible data analysis pipelines in R. 
                      It can deal wiht nested tabular, as well as spatial and time series data. The datacleanr is
                      developed using the Shiny package, and relies on informative summaries, visual cues and interactive
                      data selection and annotation. All data-altering operations are documented, and converted to valid R code
                      (reproducible recipe), that can be copied, sent to an active RStudio script, or saved to disk."
               ),
               tags$p("CRAN:", tags$a("https://cran.r-project.org/package=datacleanr", 
                                         href ="https://cran.r-project.org/web/packages/datacleanr/index.html")),
               tags$p("Source Code:", tags$a("https://github.com/the-Hull/datacleanr", 
                                             href ="https://github.com/the-Hull/datacleanr"))
             ),
             
             box(
               title = "Avalanche | NatRiskChange Task Force Report", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               
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
               
             )

             ),
      
      #right column of the Shiny dashboard
      column(width = 6,
             
             box(
               title = "Seca Vista | Drought Forecase Ceara (Brazil)", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               
               tags$p("SecaVista provides monthly meteorological and hydrological drought severity forecasts with a lead time of 8 months for the state of Ceará, Brazil. Meteorological drought severity is represented with the Standardized Precipitation Index (SPI) and with a Rainfall Anomaly (RA). Hydrological drought severity was defined as the mean storage level of reservoirs.
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
               title = "Buhayra | A prototype product for presenting distributed water storage in a large reservoir network", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               
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


             )
       )
      ),
    
    fluidRow(
          
      br(),
      
      tags$h3("and ", align = "center", style="color: #FFFFFF"),
      tags$h1("further tools, models, packages based on", tags$em(tags$b("Python"), style="color: #669900"), ", ", tags$em(tags$b("Matlab"), style="color: #FFCC33"), ", ", tags$em(tags$b("C++"), style="color: #CC3333"), ", ", tags$em(tags$b("Fortran"), style="color: #663399"), ",...", align = "center", style="color: #FFFFFF"),
      
      br(),
      
      tags$h4("You want to get to know further tools, models, packages,...engineerd by environemntal researcher in Potsdam/Berlin? And not only based on R, but using
                      Pyhton, Matlab,...? Then continue browsing through the following compilation.", align = "center", style="color: #FFFFFF"),
      
      br(),
      br(),
      
      #rigth column further tools, models, packages,...
      column(width = 6,
             
             box(
               title = "TopoToolbbox | MATLAB-based software for topographic analysis", collapsible = T,  status = "warning", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("TopoToolbox provides a set of MATLAB functions that support the analysis of relief and flow pathways in digital elevation models. The major aim of TopoToolbox 
                      is to offer helpful analytical GIS utilities in a non-GIS environment in order to support the simultaneous application of GIS-specific and other quantitative methods."),
               tags$p("Website:", tags$a("https://topotoolbox.wordpress.com/", href = "https://topotoolbox.wordpress.com/")),
               tags$p("Source Code:", tags$a("https://github.com/wschwanghart/topotoolbox", href = "https://github.com/wschwanghart/topotoolbox"))
             ),
             
             box(
               title = "WASA-SED | Numerical Model for hydrological and sediment fluxes", collapsible = T,  status = "danger", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("WASA-SED is a numerical model that allows for the simulation of hydrological and sediment fluxes at the meso-scale enigeered at the University of Potsdam.
                      The continous, deterministic and spatially semi-distributed model originally was developed in the framework of a ",
                      tags$a("dissertation", href = "https://publishup.uni-potsdam.de/opus4-ubp/frontdoor/deliver/index/docId/59/file/guentner.pdf"),
                      "by Andreas Güntner to quantify water availability in semi-arid regions. Ever since the first set-up, WASA-SED is subject to the process of advancement and
                      expansion. Most important steps were the incorporation of a",
                      tags$a("sediment routine", href = "https://gmd.copernicus.org/articles/3/275/2010/gmd-3-275-2010.pdf"),
                      "and the",
                      tags$a("development", href = "https://doi.org/10.1016/j.jhydrol.2004.04.008"), "and",
                      tags$a("automatization", href = "https://doi.org/10.1080/13658810701300873"),
                      "of a semi-distributed approach bbase on hillslopes. Recent model extentions inlude the implementation of a physically-based
                      snow routine and a reservoirs module."),
               tags$p("Source Code:", tags$a("https://github.com/TillF/WASA-SED", href = "https://github.com/TillF/WASA-SED"))
             ),
             
             box(
               title = "lumpR | Landscape Unit Mapping for R", collapsible = T,  status = "primary", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("The R package provides functions for a semi-automated approach of the delineation and description of landscape units and partition into
                      terrain components.  It can be used for the pre-processing of semi-distributed large-scale hydrological and erosion models using 
                      catena-representation (WASA-SED, CATFLOW). It is closely connected to and uses functionalities of GRASS GIS. Additional pre-processing 
                      tools beyond the scope of the original LUMP algorithm are included."),
               tags$p("Source Code:", tags$a("https://github.com/tpilz/lumpR", href = "https://github.com/tpilz/lumpR")),
               tags$p("Research Article:", tags$a("https://doi.org/10.5194/gmd-10-3001-2017", 
                                                  href ="https://doi.org/10.5194/gmd-10-3001-2017"))
               
             )
             
      ),
      
      
      #right column further tools, models, packages,...
      column(width = 6,
             
             box(
               title = "rainymotion | Python library for radar-based precipitation nowcasting", collapsible = T,  status = "info", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("Precipitation nowcasting has become an essential technique in various application context, such as early warming
                      or urban sewage control. The Python library rainymotion serves as tool for fast, free, and transparent precipitation nowcasting, is based only on free and open source software,
                      and can serve as a benchmark for further model development and hypothesis testing."),
               tags$p("Source Code:", tags$a("https://github.com/hydrogo/rainymotion", href = "https://github.com/hydrogo/rainymotion")),
               tags$p("Research Article:", tags$a("https://doi.org/10.5194/gmd-12-1387-2019", href = "https://doi.org/10.5194/gmd-12-1387-2019"))
             ),
             
             box(
               title = "RainNet | A convolutional neural network for radar-based precipitatin nowcasting", collapsible = T,  status = "info", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("RainNet was trained to predict continuous precipitation intensities at a lead time of five minutes, using several years of quality-controlled weather radar composites provided 
                      by the German Weather Service (DWD). The RainNet's design was inspired by the U-Net and SegNet families of deep learning models which were originally designed for binary segmentation tasks. 
                      RainNet follows an encoder-decoder architecture in which the encoder progressively downscales the spatial resolution using pooling, followed by convolutional layers; and the decoder 
                      progressively upscales the learned patterns to a higher spatial resolution using upsampling, followed by convolutional layers. There are skip connections from the encoder to the decoder 
                      branches in order to ensure semantic connectivity between features on different layers. In total, RainNet has 20 convolutional, four max pooling, four upsampling, two dropout layers, and four skip connections."),
               tags$p("Source Code:", tags$a("https://github.com/hydrogo/rainnet", href = "https://github.com/hydrogo/rainnet")),
               tags$p("Research Article:", tags$a("https://doi.org/10.5194/gmd-13-2631-2020", href = "https://doi.org/10.5194/gmd-13-2631-2020"))
             ),
             
             box(
               title = "ECHSE | Eco-Hydrological Simulation Environment", collapsible = T,  status = "success", solidHeader = TRUE,  width = NULL, collapsed = T,
               tags$p("The ECHSE is a modeling framework aimed at facilitating the rapid development of hydrological model engines. It is applicable, for example, 
                      to dynamic simulation problems arising in rainfall-runoff or water quality modeling. In ECHSE-based models, the system of interest is modeled as 
                      a collection of interacting objects (of one ore more classes). The models are primarily applicable to situations where the objects interact in a 
                      feed-forward manner (one-way interactions). Feedbacks (two-way interactions) are supported but numerical accuracy is currently limited to 1st order. 
                      Thus, the framework is NOT suited, for example, to solve partial differential equations (groundwater flow, St. Venant equations, etc.). The framework 
                      is implemented in C++ and supports shared memory parallel computing. It can be run on different platforms, namely recent versions of Linux and Windows."),
               tags$p("Source Code:", tags$a("https://github.com/echse", href = "https://github.com/echse")),
               tags$p("Project website:", tags$a("https://github.com/echse/echse.github.io", href = "https://github.com/echse/echse.github.io"))
             )
      ),
      
      br(),
      br(),
      br(),
      
      #Contact information accross entire dashboard
      
      tags$h4("Should you have any questions, suggestions or need more information, please do not hesitate to contact
              the developers of the individual tools. Should you have questions regarding this Shiny dashbboard or want to contribute,
              please visit the", tags$a("repository", href = "https://github.com/ERottler/env-sci-interactive"),
              "of this project or write an email to rottler(a)uni-potsdam.de or martinsd(a)uni-potsdam.de", 
              align = "center", style="color: #FFFFFF")
      

      
      
    )

      )#dashboardBody
      )

server <- function(input, output, session) {
  
  
}

shiny::shinyApp(ui, server)
