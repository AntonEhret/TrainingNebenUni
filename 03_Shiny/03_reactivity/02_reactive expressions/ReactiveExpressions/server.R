
function(input, output) {


    output$p1 <- renderPlot({
        
        ggplot(data = mtcars, aes_string(x = "mpg", y = input$colSelector)) + geom_point()
        
    })
    
    filteredData <- reactive({
        
        filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
        
        return(filteredData)
        
    })
    
    output$p2 <- renderPlot({
        
        ggplot(data = filteredData(), aes_string(x = "mpg", y = input$colSelector)) + geom_point()
        
    })

}
