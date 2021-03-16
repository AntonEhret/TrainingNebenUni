fluidPage(
    sidebarLayout(
        sidebarPanel(
            selectInput("cylSelector", label = "Select a cylinder", choices = cylinderChoices),
        ),
        mainPanel(
            downloadButton("downloadData", "Download Data"),
            DTOutput("datatable1")
        )
    )
)