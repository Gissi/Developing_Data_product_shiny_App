#######
#Hér má skilgreina t.d nýtt gagnasett sem er sótt dæmi væri fantasy football data
library(shiny)
library(ggplot2)
library(datasets)

palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))


shinyServer(
  
  function(input, output){
    
    output$inputValue <- renderPrint({input$slider1})  
    output$newHist <- renderPlot({p1 <- ggplot(iris[1:input$slider1,], aes(x = Sepal.Length, y =  Sepal.Width))
                                  p1+geom_point()+geom_smooth(method = "lm")+labs(title = "Scatterplot", x = "Sepal_length", y="Sepal_width")
                                  #+theme_bw()+theme(plot.title= element_text(size = 20, colour = "red"))         
                               
                                  })
    output$data <- renderTable({
      iris[1:input$num,c(5,1,2)]
    })
    
      
    
  }
)