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

##2. Basic R code: A.performing basic calculations 
#Addition
5+3
#Substraction
100-72
#Multiplication
897*5
#Division
564/4
#exponential
25^6
#remainder
10%%3

##B: creating variables
#store information in variables
age<-25
height<-1.66
name<-"Ailyne"
is_student<-TRUE

##Important concepts:
#<- assigns a value to variable.names
#"name" is a character string
#TRUE is a logical value
#to check the datatype or type of variable, use class(variable name)
age1<-50
future_age<-age1+25
future_age

##C.creating vectors
#create a vector of student marks
marks<-c(80,90,70,65,60,75,85,95)
marks
summary(marks)
length(marks)
#c()combines values into a vector

##D.working with data frames;
#data frame is a table containing rows(features)and columns(observations)
##create a student dataset
students<-data.frame(name=c("Alice","John","Bruce","Kaiyini","Abel"),
                     age=c(18,20,25,15,28),
                     gender=c("Female","Male","Male","Male","Female"),
                     marks=c(96,90,75,85,70)
)
students
head(students)
tail(students)
View(students)
str(students)
summary(students)
length(students)
summary(students$marks)
nrow(students)
ncol(students)

###3.Learning data manipulation with dplyr
##dplyr package is used for cleaning, filtering, sorting and summarise dataset
install.packages("tidyverse")
library(tidyverse)

##A.selecting columns
students %>%
  select(name, marks)
##B. filtering rows
#Find students with marks greater than 80
students %>%
  filter(marks>80)

##C.sorting data
#Arrange students from highest to lowest marks
students %>%
  arrange(desc(marks))
##D.creating a new variable

###Using conditions(if and else)
mark<-75
if (mark>=50){
  print("pass")
}else{
  print("fail")
}
mark<-96
if (mark>=80){
  print("Excellent")
}else if(mark>=60){
  print("Good")
}else{
  print("Pass")
}

###using loops
for(i in 1:5){
  print(i)
}
for(mark in marks){
  print(mark)
}

###creating functions
add_numbers<-function(a,b){
  result<-a+b
  return(result)
}
add_numbers(40,71)
###install ggplot2 used for presenting your dataset on graph
installed.packages("ggplot2")
library(ggplot2)
ggplot(students,aes(x=name,y=
                      marks))+geom_col(fill = "blue")+
  labs(title="students'marks",
       x="student name",
       y="marks")
