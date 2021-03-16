library(shiny)
library(shinydashboard)
library(DT)
library(readr)
library(dplyr)
library(ggplot2)
library(data.table)

allData <- as.data.frame(read_csv("/Users/antonehret/Documents/GitHub/Anton/training/03_Shiny/06_AdvancedShiny/allBaseballData.csv"))
#' For the four inputs in the sidebar
playerChoices <- unique(allData$name)
yearChoices <- unique(allData$yearID)
metricChoices <- c("G", "AB", "R", "H", "Doubles", "Triples", "HR", "RBI", "BB", "SO")
teamChoices <- unique(allData$franchName)