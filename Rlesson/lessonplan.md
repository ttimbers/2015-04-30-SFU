# Day 1 

## James

1. setwd(), read.csv(): gap minder (don’t assign)
2. assign simple objects as example
3. using ? (help) in R
4. Assign gapminder dataset. Useful data frame commands: head(), dim(), class(), str()
5. Indexing data frames - examples
6. Simple functions: min, max, mean, sd
7. Subsetting: apply()
8. Writing data: write.csv() on max/mean of gap minder variable
9. Plotting: raw data + functions (max, mins?) of data

## Evan
Here's a rough outline of my lesson:

1. basic plotting, adding color, adding lines,
2. adding keys, changing size and orientation of text
3. creating multi-plots with par
4. writing your own functions
5. using your function on your data with the apply functions
6. maybe write and use a function that reads a data frame, does a couple standard stats operations (stdev, min, max, for example) and makes a multi plot showing these for each sample/column/what have you in a comparative framework. that way the plotting and function lessons are tied together into some kind of coherent narrative
7. handoff to andrew

Do we think that's too much? I could do away with adding keys, changing text orientation, or using multiple layout plots, but I feel like the students should be able to handle this stuff. They're built in functions after all.

How about a function that takes three arguments - dataset name, x variable and y variable. Then does just one thing - either draws a plot OR does a linear model an extracts the slope, whatever.