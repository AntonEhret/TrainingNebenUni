navbarPage("Navbar Example",
           tabPanel("inputs",
                    selectInput("xSelector", label = "Select the x-axis", choices = xAxisChoices),
                    selectInput("ySelector", label = "Select the y-axis", choices = yAxisChoices),
                    selectInput("cylSelector", label = "Select a cylinder", choices = cylinderChoices),
                    checkboxInput("showtitle", label = "Check to enter title", value = FALSE),
                    conditionalPanel(condition = "input.showtitle == true",
                                     textInput("title", label = "Enter a plot title", placeholder = "Title")),
                    actionButton("refreshPlot", label = "Refresh")
           ),
           navbarMenu("outputs",
                      tabPanel("Plot", plotOutput("p1")),
                      tabPanel("Data", tabPanel("Data", DTOutput("d1"))
                      )
           )
)