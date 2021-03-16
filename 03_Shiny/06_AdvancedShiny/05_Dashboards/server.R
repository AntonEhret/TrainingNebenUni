function(input, output){
    
    messageData <- data.frame(from = c("finance", "Accounting", "HR"),
                              message = c("Revenue is up","Budget meeting this Friday", "Donuts in the breakroom")
    )
    
    output$messageMenu <- renderMenu({
        
        msg <- apply(messageData, 1, function(row){
            messageItem(from = row[["from"]], message = row[["message"]])
        })
        
        dropdownMenu(type = "messages", .list = msg)
        
    })
    
    dataFiltered <- reactive({
        
        data <- mtcars[mtcars$cyl == input$selectCylinder,]
        return(data)
        
    })
    
    output$data1 <- renderDT(datatable(dataFiltered()))
    
    output$plot1 <- renderPlot({
        ggplot(data = dataFiltered(), aes(x = mpg, y = hp)) + geom_point()
    })
    
}