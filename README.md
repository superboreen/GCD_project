# GCD_project
Coursera Getting and Cleaning Data Project

## Approach

The approach I took was to read in the subject, activity and features data, once for the test set and once for the training set. 

I chose not to use the Inertial Signals data is the variables were unnamed and it wasn't clear if they contained mean or standard deviation values.

I made sure the columns had meaningful names before I then assembled them logically using *cbind* (column bind).

I then added the training and test sets together using *rbind* (row bind).

I then merged in the meaningful activity descriptions and removed the activity code from the data set by setting it to NULL.

Using the *melt* function from the *reshape2* package I melted the data set down to subject, activity, variable and value. 

Using *grep*, I subsetted the data down to 86 variables containing "mean" and "std". 

Once that was done, I used *dplyr* to create a tidy data set, and wrote that out to a "tidy_data_set.txt file".

My tidy data set contains 15480 values. These are for all thirty subjects, for each of the subjects' six activities, for each of the 86 variables. 30 x 6 x 86 = 15480. This tells me that it is a good tidy data set.

ENDS.