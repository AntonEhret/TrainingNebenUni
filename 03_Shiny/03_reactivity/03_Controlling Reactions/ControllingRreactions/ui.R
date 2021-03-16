fluidPage(
    
    selectInput("xSelector", label = "Select the x axis", choices = xAxisChoices)
    , selectInput("ySelector", label = "Select the y axis", choices = yAxisChoices)
    , selectInput("cylSelector", label = "Select a cylinder", choices = cylinderChoices)
    , actionButton("refreshPlot", label = "Refresh")
    
    , plotOutput("p1")
    
)