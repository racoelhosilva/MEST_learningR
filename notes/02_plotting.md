<h1 align="center"> Plotting </h1>

<h2>Table of Contents </h2>

- [Analysing the Dataset](#analysing-the-dataset)
- [plot() Function](#plot-function)
  - [Parameters](#parameters)
  - [Plotting Mathematical Functions](#plotting-mathematical-functions)
- [Creating Functions](#creating-functions)
- [Mathematical Operators](#mathematical-operators)


## Analysing the Dataset

> **Tip:** use the 'iris' dataset in order to visualize most of these functions

In order to get the full information about a dataset, we can just call the variable associated with the dataset.  
By doing this, we can identify different variables about the dataset as the column headers on top (assuming it is a dataframe and not just a vector/matrix).
This is useful because different variables have different classifications (categorical or quantitative) and we can then better understand the dataset and use it.

In order to analyse specific variables from a dataset, we use the ```$``` after the dataset name and specify the variable we are refering to: ```dataset$variable```.  
This is extremely useful when plotting because we can specify certain variables for certain axis.

## plot() Function

The ```plot()``` function is the general plot function and its output is adapted automatically to the dataset and the variables specified in its invocation:

- When called with a dataset, it will plot all possible combinations of axis for the entire dataset
- When called with one dataset variable, it will plot the dataset using that variable and another different one (usually the index)
- When called with two dataset variables, it will create the most appropriate plot for that situation

### Parameters

Besides the data itself, there are other parameters that can be specified to change the resulting graph display. Note that these work like keyword-arguments and must be passed as ```function(..., keyword=parameter,...)```.  
Some of the common ones are:

``` R
plot(...
 type = "_", # Forced graph type (p, l, h...)
 col = "#123456", # Color for the plots
 pch = 19, # Point character for the graph
 main = "Title Name", # Title of the graph
 xlab = "x-axis", # Name of x-axis variable
 xlab = "y-axis" # Name of y-axis variable
)
```

### Plotting Mathematical Functions

The plot() function can also be used to plot mathematical functions other mathematical graphs using the following syntax:
```R
plot(<function>, <lower_bound>, <upper_bound>)
# The function should be well-defined (more on that later, try built-in like cos, sin, dnorm...)
```

## Creating Functions

Since functions have been mentioned in the previous section, we can already learn the basics about how they are defined and how they work. Functions in R can take any number of parameters and may only ever return one value.  
The syntax is the following:
```R
function_name <- function(parameter) {
    ...
    do_some_operations
    ...
    return(parameter * 2)
}
```

That is the basic function syntax. As you can imagine, R also has the common mathematical operators that can be used to create mathematical functions (which can then be plotted). The following section contains a quick overview of the operators.

## Mathematical Operators

| Symbol | Name | Example |
| --- | --- | --- |
| + | Addition | ```7 + 4```
| - | Subtraction | ```7 - 4```
| * | Multiplication | ```7 * 4```
| / | Division | ```7 / 4```
| ^ or ** | Power/Exponentiation | ```7 ^ 4``` or ```7 ** 4```
| %% | Modulus/Rest | ```7 %% 4```
| %/% | Integer Division | ```7 %/% 4```

As expected, parentheses can and should be used to disambiguate expressions and for better readability.


