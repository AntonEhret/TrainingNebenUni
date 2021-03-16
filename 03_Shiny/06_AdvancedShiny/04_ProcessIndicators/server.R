function(input, output){
    
    observeEvent(input$loop, {
        
        n = 100
        withProgress(message = "Running Process", value = 0, {
            for( i in 1:n){
                incProgress(amount = 1/n, detail = paste0("completed ", i, " %"))
                Sys.sleep(.1)
            }
        })
        
    })
    
}