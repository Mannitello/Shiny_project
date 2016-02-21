library(shiny)


#By default, the file size limit is 5MB. It can be changed by
# setting this option. Here we'll raise limit to 9MB.
options(shiny.maxRequestSize = 9*1024^2)

shinyServer(function(input, output) {
      output$table <- renderTable({
                            inFile <- input$file1
                            if (is.null(inFile))
                              return(NULL)
                              read.csv(inFile$datapath, header = input$header, 
                                       sep = input$sep, quote = input$quote)
                            })
        
          output$plot <- {renderPlot({
                              inFile <- input$file1
                              if (is.null(inFile))
                              return(NULL)
                              data <- read.csv(inFile$datapath)
                              hist(data$Total, main="Total Revenue ")
                              })
                              }
  })