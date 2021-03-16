fluidPage(
    sidebarLayout(
        sidebarPanel(
            selectInput("month", label = "Select a month", choices = monthChoices),
            selectInput("columns", label = "Select a column to plot", choices = c("Wind", "Temp"))
            ),
        mainPanel(
            fluidRow(
                column(width = 6, DTOutput("datatable1")),
                column(width = 6, plotOutput("plot1"))
            )
        )
    )
)