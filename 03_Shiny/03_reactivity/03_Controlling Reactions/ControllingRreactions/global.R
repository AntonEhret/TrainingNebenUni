library(shiny)
library(ggplot2)

data("mtcars")

xAxisChoices <- colnames(mtcars)
yAxisChoices <- colnames(mtcars)

cylinderChoices <- unique(mtcars$cyl)