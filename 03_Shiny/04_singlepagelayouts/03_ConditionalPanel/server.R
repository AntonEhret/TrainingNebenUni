function(input, output) {
    
    filteredData <- reactive({
        
        filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
        return(filteredData)
        
    })
    
    plot1 <- eventReactive(input$refreshPlot, {
        
        if(input$showtitle == TRUE){
            ggplot(data = filteredData(), aes_string(x = input$xSelector, y = input$ySelector)) +
                geom_point() + geom_line() +
                ggtitle(input$title)
        } else{
            ggplot(data = filteredData(), aes_string(x = input$xSelector, y = input$ySelector)) +
                geom_point() + geom_line()
        }
        

        
    })
    
    output$p1 <- renderPlot(plot1())
    
}