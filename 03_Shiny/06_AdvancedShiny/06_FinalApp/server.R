function(input, output){
    
    teamData <- reactive({
        
        filteredData <- subset(allData, franchName == input$teamSelect)
        
        final <- data.table(filteredData)[,list(G = sum(G),
                                                AB = sum(AB),
                                                R = sum(R),
                                                H = sum(H),
                                                Doubles = sum(Doubles),
                                                Triples = sum(Triples),
                                                HR = sum(HR),
                                                RBI = sum(RBI),
                                                BB = sum(BB),
                                                SO = sum(SO)),
                                          by = list(franchName, yearID)]
        
        return(final)
        
    })
    
    yearData <- reactive({
        
        filteredData <- subset(allData, yearID == input$year)
        
        final <- filteredData[order(filteredData[input$metricSelect], decreasing = T), ]
        final2 <- final[1:10,]
        
        final2$name <- factor(final2$name,levels = unique(final2$name))
        
        return(final2)
        
    })
    
    playerData <- reactive({
        
        filteredData <- subset(allData, name == input$playerSelect)
        
        return(filteredData)
        
    })
    
    playerCareerData <- reactive({
        
        data <- playerData()
        
        careerData <- data.table(data)[,list(G = sum(G),
                                             AB = sum(AB),
                                             R = sum(R),
                                             H = sum(H),
                                             Doubles = sum(Doubles),
                                             Triples = sum(Triples),
                                             HR = sum(HR),
                                             RBI = sum(RBI),
                                             BB = sum(BB),
                                             SO = sum(SO)),
                                       by = list(name)]
        
        return(careerData)
        
    })
    
    output$careerDataPlayer <- renderDT({
        
        data <- playerCareerData()
        
        datatable(data, options = list(pageLength = nrow(data)))
        
    })
    
    output$yearlyDataPlayer <- renderDT({
        
        data <- playerData()
        
        datatable(data, options = list(pageLength = nrow(data)))
        
    })
    
    output$yearPlotPlayer <- renderPlot({
        
        plot <- ggplot(playerData(), aes_string(x = "yearID", y = input$metricSelect)) 
        plot <- plot + geom_col(fill = "blue") 
        plot <- plot + ggtitle(paste0(input$metricSelect, " Per Year For ", input$playerSelect))
        plot
        
    })
    
    output$teamData <- renderDT({
        
        data <- teamData()
        
        datatable(data, options = list(pageLength = nrow(data)))
        
    })
    
    output$yearLeaderPlot <- renderPlot({
        
        plot <- ggplot(yearData())
        plot <- plot + geom_col(aes_string(x = "name", y = input$metricSelect), fill = "blue")
        plot <- plot + ggtitle(paste0(input$metricSelect, " Leaders For the Year ", input$year))
        plot
        
    })
    
    
}