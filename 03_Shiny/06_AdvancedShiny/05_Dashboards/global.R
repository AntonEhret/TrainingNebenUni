library(shiny)
library(shinydashboard)
library(ggplot2)
library(DT)
data("mtcars")
xAxisChoices <- colnames(mtcars)
yAxisChoices <- colnames(mtcars)

cylinderChoices <- unique(mtcars$cyl)