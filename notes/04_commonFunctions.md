<h1 align="center"> Common Functions </h1>

<h2>Table of Contents </h2>

- [Introduction](#introduction)
  - [Measures of Location](#measures-of-location)
    - [Average/Mean](#averagemean)
    - [Median](#median)
    - [Quantiles, Percentiles and Quartiles](#quantiles-percentiles-and-quartiles)
    - [Mode](#mode)


## Introduction

Besides the plotting functions, there are some other operations that are very common and also very useful to analize some characteristics about quantitative data associated with the dataset.
+ Measures of Location
+ Measures of Dispersion

Note that, for most of these functions, we might also want to output some text associated with each for better readability. To do this, we can use one of two main methods (there are more that I will not be covering like sprintf or message):
- ```cat(text, variables, function..., "\n")```: allows concatenation of multiple strings or sources of output, but be careful as it doesn't write endline characters (this is the one I use and recommend)
- ```print(paste(text, variable, ...))```: allows for printing values but, since it cannot take both a string and a variable, ```paste``` or ```paste0``` should be used for this effect

### Measures of Location

There are four main measures of location, all implemented in R with simple functions:

#### Average/Mean

Average/mean is the result we get by adding up all the values and dividing by the number of values in the dataset. In R, the implementation is given with the function ```mean(data)```.

```R
cat("Mean:", mean(data), "\n")
```

#### Median

After ordering the data, the median value is the central observation of the dataset. If the length of the dataset is odd, the value is the central value; if it is even, the value is the average of the two central values. In R, the implementation is given with the function ```median(data)```.

```R
cat("Median:", meadian(data), "\n")
```

#### Quantiles, Percentiles and Quartiles

There are multiple definitions but, we are considering a quantile such that after ordering the data with n elements, quantile of order p is the value where p\*n elements are smaller than the quantile and the rest of the (1-p\*n) elements are larger.  
Percentiles follow a specific pattern but using percentages associated with each value.  
Quartiles are a special case of the quantiles where we consider the data divided exactly into 4 parts (with 3 quartiles). Given this definition, we can also see that quartile number two is the same as the median.  
In R there are 9 different methods to calculate the quantiles using the ```quantile()``` function but according to the previous definition, we should use ```type=2```. By default, the function returns the values of the quartiles.

```R
cat("Quartiles:", quantile(data, type=2), "\n") # Quartiles
cat("Percentile order 15:", quantile(data, 0.15, type=2), "\n")
```

#### Mode

The mode is the most frequent occurence(s) in the dataset. And although it appears here in the file, R doesn't, by default, have a function to obtain the mode of a dataset. There are some packages that provide it but since the use in this course is not that common, I will not consider it for now (but I'm always open to suggestions :D).