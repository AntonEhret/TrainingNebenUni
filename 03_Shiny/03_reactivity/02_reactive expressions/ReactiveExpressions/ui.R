fluidPage(
    
    selectInput("colSelector", label = "Select a column", choices = colChoices)
    
    , plotOutput("p1")
    
    , selectInput("cylSelector", label = "Select a cylinder", choices = cylinderChoices)
    
    , plotOutput("p2")
    
)

