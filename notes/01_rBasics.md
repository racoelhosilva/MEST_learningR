<h1 align="center"> R Basics </h1>

<h2>Table of Contents </h2>

- [Data and Datatypes](#data-and-datatypes)
- [Basic Functions](#basic-functions)
- [Help Function](#help-function)
- [Including Libraries](#including-libraries)

## Data and Datatypes
Most of the time, the data for a given program will be loaded from a dataset file, but, in order to get started and learn some functions, it's probably better to learn how to do this manually.  

| Name | Initialization | Description |
| --- | --- | --- |
| Numeric | num <- 73 | Holds both integers or decimals 
| Character | text <- "Hello, R" | Any type of text, string or characters
| Logical | logical <- TRUE | Boolean values for *_TRUE_* or *_FALSE_*
| Factor | factor <- factor(c("A","B","C")) | Categorical variables that have a fixed and known range of values 
| Missing | missing <- NA | Not attributed
| Empty | empty <- NULL | Null or non-existing value
| | |
| Vector | vec <- c(1,2,3,4,5) | 1D collection of variables of the same type   
| Matrix | mat <- matrix(1:6, nrow = 2, ncol = 3) | 2D collection of variables of the same type
| Data Frame | df <- data.frame(a = c("b", "c"), b = c(1, 2)) | Table-like (2D) structure of variables with multiple types

## Basic Functions

There are, of course, a lot of functions and data analysis that can be done with R. However, to start off there a few important functions that can be very useful to quickly get an overview of the dataset.

``` R
head(<dataset>, <optional_num>) # Return the first entries of the dataset
tail(<dataset>, <optional_num>) # Return the last entries of the dataset
# Adding a number specifies how many entries to show

summary(<dataset>) # Some quick common operations on datasets
```

## Help Function

An even more important function that can be very useful is the help function for a command. It opens the documentation for that function and can be very useful to learn more about specific things of some commands.  
In order to load the help for some command, just type ```?command``` and a window should open with some information about it


## Including Libraries
By default, there a multitude of packages that come pre-installed with R. In order to get a full list of them you can use the command ```installed.packages()``` inside a R terminal session.

```R
library(<name_of_library>)
```

> **Tip:** Some of the following functions are better understood and seen with hands-on experience. For this, you can use datasets included in the ```datasets```that can be loaded and used. Some of the contained datasets are called 'iris', 'rivers', 'trees' and many more that can be found in the library description