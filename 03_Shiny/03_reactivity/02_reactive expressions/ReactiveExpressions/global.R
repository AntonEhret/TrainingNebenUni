library(shiny)
library(ggplot2)

data("mtcars")

colChoices <- colnames(mtcars)

cylinderChoices <- unique(mtcars$cyl)