dashboardPage(
    dashboardHeader(title = "Dashboard Header",
                    dropdownMenu(type = "message"
                                 , messageItem(from = "Mike", message = "This is a test message")),
                    dropdownMenuOutput("messageMenu"),
                    dropdownMenu(type = "notification",
                                 notificationItem(text = "This is a test notification")),
                    dropdownMenu(type = "tasks",
                                 taskItem(text = "This is a test task", value = 50))
    ),
    dashboardSidebar(
        sidebarMenu(
            menuItem(text = "Data", tabName = "data", icon = icon("table")),
            menuItem(text = "Plot", tabName = "plot", icon = icon("chart-bar")),
            selectInput(inputId = "selectCylinder", label = "Select a cylinder", choices = cylinderChoices)
        )
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName = "plot", plotOutput("plot1")),
            tabItem(tabName = "data", DTOutput("data1"))
        )
    )
)