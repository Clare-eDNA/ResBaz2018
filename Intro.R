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

# load gapminder data
gapminder<-read.csv("gapminder-FiveYearData.csv", stringsAsFactors = FALSE) 
#you can also start with "data/" and it'll automatically pull up some files
#Strings (aka columns with characters) are not going to be loaded in as factors
summary(gapminder)
head(gapminder)

ggplot(data=gapminder,aes(x=gdpPercap, y=lifeExp))+geom_point()
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent))+geom_line()+geom_point()

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent))+geom_point()
#spread everything out
ggplot(data=gapminder, aes(x=log(gdpPercap), y=lifeExp, color=continent))+geom_point()
#or
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent))+geom_point(alpha=0.5)+scale_x_log10() #alpha is the transparency scale and gets our points transparent
#scale_x_log10 makes a log scale base 10 for the x axis
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp))+geom_point(alpha=0.5)+scale_x_log10() + geom_smooth(method="lm", size=1.5)
#adds a line with p cool conf ints
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent))+geom_point(alpha=0.5)+scale_x_log10() + geom_smooth(method="lm")

#Order matters. If you plot the line first, then it'll put the line behind the points. 

#Faceting out data to make things a little more clear... 
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()+facet_wrap(~continent)+theme_minimal()
#So, all the different countries with all each of the lines in one graph