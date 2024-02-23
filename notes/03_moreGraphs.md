<h1 align="center"> More Graphs </h1>

<h2>Table of Contents </h2>

- [Bar Graphs](#bar-graphs)
- [Splitting Data in Classes](#splitting-data-in-classes)
- [Histograms](#histograms)
  - [Sturges Method](#sturges-method)


## Bar Graphs

Bar graphs are extremely useful for qualitative data frequency and for discrete quantitative data. In order to create bar graphs in R we use the command ```barplot()```.  

```R
barplot(
    height, # what determines the height in the y-axis
    ...
)

```

Note that, sometimes the result of barplot doesn't work as we expected it to. So we may need to convert the dataset into a absolute frequency table using ```table(data)```.
This table can also be used to print values.  
Another useful table is the relative frequency table that can be obtained by using ```table(data) / length(data)``` which calculates the relative frequency for each value in the table.

## Splitting Data in Classes

A common operation is to split data in different classes with ranges of values. To do this, we have a few commands that we can use:

```R
breaks <- c(...) # to begin, we need a list of values that will be used to split the values into classes
classes <- c("...") # names for each of the split created in the previous command
result <- cut(data, breaks=breaks, labels=classes) # the last parameter is optional but provides better output
```


## Histograms

Histograms are useful for continuous quantitative data that can, and most of the times should, be grouped in classes or intervals of vales. In order to create histograms we use the ```hist()``` command.  

```R
hist(
    data,
    right = TRUE, # determines if the right-limit value is part of the class
    ...
)
```

The classes used by histograms are calculated automatically using the Sturges method and adapting the result for better readability.  

### Sturges Method

The Sturges method basically returns a rule for the number of classes that should exist based on the number of occurrences. To see this in R, we can call the ```nclass.Sturges(data)``` method.  
Given the recommended number of classes, we get the range of each class by the amplitude of data divided by the number of classes.

