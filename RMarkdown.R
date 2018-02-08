# R Markdown
# Reproducable Research, best practice methods

#Step 1: make a new project
  #New directory -> new project -> chuck it somewhere useful
  #If you check "create a git repo, 
  #Generally make folders (Data, Source, Results, Docs)
  #If you don't want your data online -> .gitignore -> type data/*

#R Markdown
#File > New File > R Markdown... > Follow prompts
#You get a new doc and then get code + text stuff
#instead of html_document you can change to pdf_document but it requires LaTeX
#You can always use Help > Markdown Quick Reference

#Code chunks can be executable by R in an R markdown file rather than just a Markdown

#To output, click on the knitting needles/Knitr, and then save the file to wherever you want
#You'll get another document that'll show you how progress goes in the console (bottom left)
#Your file should come up automatically once the file is created

#To make a code chunk... ctrl+alt+i
# include=FALSE is when you don't want the code chunk to show up
# echo = TRUE or FALSE - tells whether the command piece of the code should be output
  #But still spits out the result
# eval = TRUE or FALSE - shows the command but not the output
  #Really good for isolating problems

#The top code chunk is the default set for all code chunks
#Make sure it's in the brackets correctly
#Everytime you hit the knit button, it'll save your document

#Help > cheatsheets > rmarkdown cheat sheets
#Help > markdown quick ref

#Making lists / nested lists
#make sure you have two tabs

#R Markdown Tables
# Syntax for basic table
table 1

col 1 | col 2 | col 3
--- | --- | ---
  row1 | 1 | 2
row 2 | 3 | 4


#Ctrl+enter runs code so you can get an idea of what is going to happen
#alignment can be r c or l (right, center or left) (you can do one letter for each column)

#Markdown tables, kabletables... digits = round to two digits, rename columns, align to the left or right (or center), add in captions
kable(data.frame(col1=rnorm(20), col2=rnorm(20)), digits =2, col.names = c("Column 1", "Column 2"), align = "lr", caption = "My caption")
library(kableExtra)

#How to make sure the table has the same number of decimal points
data.frame(col1=rnorm(20), col2=rnorm(20)) %>%
  mutate(col1=sprintf('%.3f',col1)) %>% #sprint f will return a character, the % means substitue in the first argument coming in (col1), the dot indicates the decimal, then we want three figures after the decimal, the f indicates the object coming in is a decimal number. So this function will take everything to three zeros, then pipe it through the end of the table with %>%
  #Make sure to do this as the last thing before it hits the formatting table
  kable(., digits=2, col.names=c("Column 1",  "Column 2"), align = "lr", caption = "My caption")

#You can make kableTables to have headers that cover multiple columns
kable(., 
      digits=2, 
      col.names=c("Column 1",  "Column 2"),
      align = "lr",
      caption = "My caption", 
      format="html") %>% 
  group_rows("first5",1,5) %>%
  group_rows('second5',6,10)%>%
  add_header_above(c("Group 1" = 2)) 