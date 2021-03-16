library(shiny)

function(input, output) {

    output$p1 <- renderPlot({
        
        ggplot(data = mtcars, aes_string(x = "mpg", y = input$colSelector)) + #we defined colselector in UI
            geom_line()
        
    })


}



