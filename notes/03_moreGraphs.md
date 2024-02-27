<h1 align="center"> More Graphs </h1>

<h2>Table of Contents </h2>

- [Dot Plot](#dot-plot)
- [Bar Graphs](#bar-graphs)
- [Splitting Data in Classes](#splitting-data-in-classes)
- [Histograms](#histograms)
  - [Sturges Method](#sturges-method)
- [Box and Whiskers Plots](#box-and-whiskers-plots)


## Dot Plot

For smaller datasets, a quick and easy way to visualize discrete quantitative data is using dot plots, or stack dot graphs. In order to create those, we must use ```stripchart()``` and specify the parameter ```method="stack"```.

```R
stripchart(
    data,
    method="stack", # specify how the points are layed out
    pch=19 # change the drawings (more info soon)
    ...
)
```

## Bar Graphs

Bar graphs are extremely useful for qualitative data frequency and for discrete quantitative data. In order to create bar graphs in R we use the command ```barplot()```.  

```R
barplot(
    data,
    height, # what determines the height in the y-axis
    ...
)

```

Note that, sometimes the result of barplot doesn't work as we expected it to. So we may need to convert the dataset into a absolute frequency table using ```table(data)```.
This table can also be used to print values.  
Another useful table is the relative frequency table that can be obtained by using ```table(data) / length(data)``` which calculates the relative frequency for each value in the table.

## Splitting Data in Classes

A common operation is to split data in different classes with ranges of values. To do this, we have a few commands that we need use:

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
    right = TRUE # determines if the right-limit value is part of the class
    ...
)
```

The classes used by histograms are calculated automatically using the Sturges method and adapting the result for better readability.  

### Sturges Method

The Sturges method basically returns a rule for the number of classes that should exist based on the number of occurrences. To see this in R, we can call the ```nclass.Sturges(data)``` method.  
Given the recommended number of classes, we get the range of each class by the amplitude of data divided by the number of classes.

## Box and Whiskers Plots

One of the most useful diagrams for data analysis is the box and whiskers graph which can be used to give a quick overview of the dataset using about 5 values.  
The base for this type of plot starts with the extremes and quartiles diagram that represents values according to 3 points:
  + Minimum Value
  + 1st Quartile
  + 2nd Quartile (Median)
  + 3rd Quartile
  + Maximum  

This graph can be done using the ```boxplot()``` function and specifying the parameter ```range=0```.

```R
boxplot(
  data,
  range=0, # Used to turn the graph into an extremes and quartiles graph
  ...
)
```

The Box and Whiskers graph is similar to this one, but the values represented are slightly different. Instead of using the minimum and maximum for the whiskers, we use:
+ Left Side: smallest value larger than the lower bound, where LB = Q1 - 1.5 IQR
+ Right Side: largest value smaller than the upper bound, where UB = Q3 + 1.5 IQR

All values that are smaller than LB or larger than UB are considered **outliers** and are represented by a symbol.  
The command to create such a graph is also ```boxplot()``` function but no parameter should be specified for the range.

```R
boxplot(
  data,
  pch=19,
  horizontal="TRUE",
  ...
)
```
One parameter that is often useful however is the ```horizontal``` flag that can be either TRUE or FALSE and represents whether the ending result should be displayed horizontally or not.

