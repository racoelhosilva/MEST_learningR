# R Basics

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

