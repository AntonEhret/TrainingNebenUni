dashboardPage(
    dashboardHeader(title = "Baseball App"),
    dashboardSidebar(
        sidebarMenu(
            menuItem(text = "Player Data", 
                     startExpanded = TRUE,
                     menuSubItem(text = "Data", tabName = "playerData"),
                     menuSubItem(text = "Plots", tabName = "playerPlot")
            ),
            menuItem(text = "Data Per Team/Year", tabName = "dataPerTeamYear"),
            menuItem(text = "Yearly Leaders", tabName = "yearlyleaders"),
            selectInput(inputId = "playerSelect", label = "Select a player:", choices = playerChoices, selected = "Barry Bonds"),
            selectInput("metricSelect", label = "Select which stat to display:", choices = metricChoices, selected = "HR"),
            selectInput("teamSelect", label = "Select which team to view", choices = teamChoices, selected = "New York Yankees"),
            selectInput("year", label = "Select which year to view", choices = yearChoices, selected = 2015)
        )
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName = "playerData",
                    DTOutput(outputId = "careerDataPlayer"),
                    DTOutput(outputId = "yearlyDataPlayer")
            ),
            tabItem(tabName = "playerPlot",
                    plotOutput("yearPlotPlayer")
            ),
            tabItem(tabName = "dataPerTeamYear",
                    DTOutput("teamData")
            ),
            tabItem(tabName = "yearlyleaders",
                    plotOutput("yearLeaderPlot")
            )
        )
    )
)