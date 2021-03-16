library(shiny)
library(DT)
library(ggplot2)

data("mtcars")

cylinderChoices <- unique(mtcars$cyl)