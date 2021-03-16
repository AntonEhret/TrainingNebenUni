library(shiny)
library(ggplot2)

data("airquality")

monthChoices <- unique(airquality$Month)