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
