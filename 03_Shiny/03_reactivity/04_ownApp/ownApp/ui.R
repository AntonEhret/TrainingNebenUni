fluidPage(
    
    selectInput("month", label = "Select a month", choices = monthChoices)
    , selectInput("columns", label = "Select a column to plot", choices = c("Wind", "Temp"))
    , DTOutput(outputId = "datatable1")
    , plotOutput("plot1")
    
)
