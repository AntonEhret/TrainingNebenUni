fluidPage(
    
    selectInput(inputId = "colSelector"
                , label = "select a column"
                , choices = colChoices) #the user will be able to choose amongst the colChoices
    ,
    plotOutput("p1")
)
