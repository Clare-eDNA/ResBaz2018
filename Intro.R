#Research Bazaar 2018 - Dunedin - University of Otago

#Some general tips: 
#Don't modify your original data
#Just manipulate your data here
#Folders for data manipulation, analysis, graphs, ect.
#Remember to create your repo in Github first
#double question marks (??) will search everything for whatever word you search for (ex. chi)
  #May help with syntax

library(ProjectTemplate) #Load the ProjectTemplate package for creating new projects
create.project("../ResBaz", merge.strategy = "allow.non.conflict")
#dots are a symbol for file paths, dots go back one folder
#merge.strategy allow non-conflict option I guess doesn't allow for conflict
#is OK if does not give feedback
#gives you a suite of folders that you can use - makes you folders for work!

#Now, download data and save data onto data folder
GapMinder<- read.csv("gapminder-FiveYearData.csv")
summary(GapMinder)
