#### This R script includes code that you need to execute and interpret the output of 
# for your first CA assignment.
#
# Instructions: Install the packages "DescTools" if you've not already done so, 
# place the "CA1-data.csv" file in the same directory as this code file, 
# and then step through the code.
# 
# It might be a good idea to step through the code, one line at a time, and make 
# observations & notes about the data as you go, scrolling back and forth through 
# the console output and plots where necessary.
#
# Packages installation:
# install.packages("DescTools")

# Copyright: Technological University of the Shannon: Midlands, 2024
# Author: fionam.walshe@tus.ie

library(DescTools)

data <- read.csv("CA1 csv file.csv")  #  Read the data into the environment.

str(data)  
#  Look at the structure of the data. What observations can you make 
# about the data types?

summary(data)  
#  Running the summary function on the data provides some statistics on the data. 
# Any observations here?

Desc(data)  #  More summaries, and visualisations, from Desc(). 
# What are the data visualisations telling you?

# The descriptives below are provided for data that are partitioned into examples 
# (rows) where the machine did not fail, and did fail, respectively. 
# 

# In the next two lines of code I am gathering row indices based on this criterion.
ok_operation_row_indices <- which(!data$Machine_failure) #  The"!" is logical negation.

fail_row_indices <- which(data$Machine_failure) # Notice the absence of the "!" in this line of code.

# In the following lines of code, I'm using the retrieved indices to create summaries and visualisations for the data
# that match/don't match the criterion of "ok operation". Are there any differences between the distributions of data
# partitioned in this way? What might this suggest?

#  Descriptives for rows that are NOT associated with machine failure
summary(data[ok_operation_row_indices, ])  

#  Descriptives for rows that are associated with machine failure
summary(data[fail_row_indices, ])  

# Further descriptives, and visualisations are provioded for the partitioned data 
# in the next two lines of code.
Desc(data[ok_operation_row_indices, ])
Desc(data[fail_row_indices, ])
