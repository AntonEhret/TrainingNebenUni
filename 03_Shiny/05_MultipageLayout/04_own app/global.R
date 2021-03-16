library(shiny)
library(ggplot2)
library(data.table)
library(DT)

data("airquality")

monthChoices <- unique(airquality$Month)