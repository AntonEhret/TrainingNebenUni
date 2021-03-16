function(input, output){
    
    output$data1 <- renderDT({
        
        req(input$file1) #app doesnt return error when there is no data yet selected
        
        df <- read.csv(input$file1$datapath, header = input$header, sep = input$sep)
        
        return(datatable(df))
        
    })
    
}