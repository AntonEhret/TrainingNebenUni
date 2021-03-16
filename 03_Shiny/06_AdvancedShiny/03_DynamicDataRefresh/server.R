library(DT)
library(shiny)
library(ggplot2)
library(data.table)

function(input, output, session){
    
        fileData <- reactiveFileReader(intervalMillis = 1000, #how often we want to check the file
                                       session = session, #monitoring of file ends as soon as session ends
                                       filePath = "/Users/antonehret/Documents/GitHub/Anton/training/03_Shiny/06_AdvancedShiny/dataToRefresh.csv",
                                       readFunc = read.csv)
        
        dataAggregation <- reactive({
            
            aggData <- data.table(fileData())[,list(totalSales = sum(Amount)), 
                                             by = list(SalesPerson, Day)]
            return(aggData)
            
        })
        
        output$updatedData <- renderDT(
            datatable(dataAggregation())
            )
        
        output$updatedPlot <- renderPlot({
            
            ggplot(data = dataAggregation(), aes(x = SalesPerson, y = totalSales, fill = SalesPerson)) + geom_col()
            
        })
    
    
}