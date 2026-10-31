#ASSIGNMENT 1: Install packages and import data from different data sources and their libraries
#==============================================
##Install packages: we install packages using install.packages() for the first time
install.packages("tidyverse")
install.packages("readxl")
install.packages("data.table")
install.packages("DBI")
install.packages("RMySQL")
install.packages("jsonlite")
install.packages("httr")
install.packages("ggplot2")
install.packages("caret")
install.packages("corrplot")
#==================================
##install multiple packages at once
packages <- c(
  "tidyverse",
  "readxl",
  "data.table",
  "DBI",
  "RMySQL",
  "jsonlite",
  "httr",
  "ggplot2",
  "caret",
  "corrplot"
) 
install.packages(packages)
#=========================

## To import packages(libraries): after installation, we use library()to load packages
library(tidyverse)
library(readxl)
library(data.table)
library(DBI)
library(jsonlite)
library(httr)
library(ggplot2)
library(caret)
library(corrplot)

##The purpose for each library
#tidyverse: Data manipulation and analysis
#readxl: Import Excel files
#data.table: Fast data processing
#DBI: Database connections
#RMySQL: Connect to MySQL databases
#jsonlite:Import and process JSON data
#httr:Retrieve data from APIs
#ggplot2: Create visualizations
#caret: Machine learning
#corrplot: Visualize correlations
