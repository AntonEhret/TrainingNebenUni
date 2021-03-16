function(input, output) {
    
    filteredData <- reactive({
        filteredData <- mtcars[mtcars$cyl == input$cylSelector,]

        return(filteredData)
    })

    plot1 <- eventReactive(input$refreshPlot, {
        ggplot(data= filteredData(), aes_string(x = input$xSelector, y = input$ySelector)) +
            geom_point()
    })

    output$p1 <- renderPlot(plot1())
    
}
