library(shiny)

shinyUI(
  navbarPage("My Shiny Project for JH Data Products Course",
             tabPanel("Explore",
                      fluidPage(
                        titlePanel("Exploring Relationships Between Selected Variables and Cars' Miles per Gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Selected Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show Outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Source Code",
                      h2("Source code can be found  on Coursera"),
                      hr(),
                      h3("Find it Here"),
                      helpText("Taken from Coursera data overview: You work for Motor Trend, a magazine about the automobile industry Looking at a data set of a collection of cars, they are interested in exploring the relationship",
                               "between a set of variables and miles per gallon (MPG) (outcome). They are particularly interested in the following two questions: Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions"),
                      h3("Code Parameters Description"),
                      p("Material, initial data set, and exercise is from the Regessions class."),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("Data Descrpition",
                      h2("Motor Trend: Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models)."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables.  The 11 variables are listed below in column order starting with column 1."),
                      
                      p("  mpg         Miles/(US) gallon"),
                      p("  cyl	 Number of cylinders"),
                      p("  disp	 Displacement (cu.in.)"),
                      p("  hp	 Gross horsepower"),
                      p("  drat	 Rear axle ratio"),
                      p("  wt	 Weight (lb/1000)"),
                      p("  qsec	 1/4 mile time"),
                      p("  vs	 V/S"),
                      p("  am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  gear	 Number of forward gears"),
                      p("  carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("Github Repo",
                      a("https://github.com/ghobbs9495/Dataproducts"),
                      hr()
             )
  )
)