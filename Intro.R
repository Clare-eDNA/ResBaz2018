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

#Write your own data
cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0,3.2), 
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "feline-data.csv", row.names = FALSE) #puts it into you working directory
#Make sure row names is FALSE so that it doesn't put the row number in
# c() is a function to make a basic list

cats$weight #puts out the weight of all cats
#Re-assign weights: add one more kg to ever cat 
cats$weight <- cats$weight +1
head(cats)

paste("My cat is", cats$coat, sep=" ") #Add in My Cat Is before coat color, and your separater is a space

str(cats) 
#change factor to character
cats$coat <- as.character(cats$coat)
str(cats)
#Factors are categories that like treatments/levels, there are meaningful categories that are more than just words, can level for non-alphabetical levels for graphing
#Characters are just words

#============================#
          #ggplot2#
#============================#

