fluidPage(
    sidebarLayout(
        sidebarPanel(
            selectInput("month", label = "Select a month", choices = monthChoices),
            selectInput("columns", label = "Select a column to plot", choices = c("Wind", "Temp"))
            ),
        mainPanel(
            tabsetPanel(
                tabPanel("Data", DTOutput("datatable1")),
                tabPanel("Plot", plotOutput("plot1"))
            )
        )
    )
)

