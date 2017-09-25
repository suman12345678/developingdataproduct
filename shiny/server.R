library(shiny)
shinyServer(
  function(input, output){
    output$species <- renderText({ calculatespecies(input$sepal.length, input$petal.length,input$sepal.width,input$petal.width) })
  }
)

calculatespecies <- function (sepal.length, petal.length,sepal.width,petal.width) 
{
  library(caret)
  c<-train(Species~.,method="rpart",data=iris)
  newdata<-data.frame(Sepal.Length=c(sepal.length),Petal.Length=c(petal.length),Sepal.Width=c(sepal.width),Petal.Width=c(petal.width))
  
  result <- as.vector(predict(c,newdata))
}
