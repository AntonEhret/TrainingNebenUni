function(input, output){
    
    filteredData <- reactive({

        filteredData <- airquality[airquality$Month == input$month,]
        
        return(filteredData)

    })
    
    output$datatable1 <- renderDT({
        
        datatable(filteredData())
        
    })
    
    output$plot1 <- renderPlot({
        
        ggplot(data = filteredData(), aes_string(x = "Day", y = input$columns)) +
            geom_point() +
            geom_line()
        
    })
    
}
