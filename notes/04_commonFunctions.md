<h1 align="center"> Common Functions </h1>

<h2>Table of Contents </h2>

- [Introduction](#introduction)
- [Measures of Location](#measures-of-location)
    - [Average/Mean](#averagemean)
    - [Median](#median)
    - [Quantiles, Percentiles and Quartiles](#quantiles-percentiles-and-quartiles)
    - [Mode](#mode)
- [Measures of Dispersion](#measures-of-dispersion)
    - [Range](#range)
    - [Interquartile Range](#interquartile-range)
    - [Standard Deviation](#standard-deviation)
    - [Variance](#variance)
    - [Coefficient of Variation (CV)](#coefficient-of-variation-cv)
- [Final Notes](#final-notes)


## Introduction

Besides the plotting functions, there are some other operations that are very common and also very useful to analize some characteristics about quantitative data associated with the dataset.
+ Measures of Location
+ Measures of Dispersion

Note that, for most of these functions, we might also want to output some text associated with each for better readability. To do this, we can use one of two main methods (there are more that I will not be covering like sprintf or message):
- ```cat(text, variables, function..., "\n")```: allows concatenation of multiple strings or sources of output, but be careful as it doesn't write endline characters (this is the one I use and recommend)
- ```print(paste(text, variable, ...))```: allows for printing values but, since it cannot take both a string and a variable, ```paste``` or ```paste0``` should be used for this effect

## Measures of Location

Measures of location are numeric values related to how quantitative values are distributed in the center values and on other important points. There are four main measures of location, all implemented in R with simple functions:

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

## Measures of Dispersion

The measures of dispersion are used to evaluate the variability of the values in the dataset. There are five main measures that are implemented in R the following way:

#### Range

The range of a dataset is the difference between the minimum and maximum elements in the dataset. It is implemented in R using the ```diff(range())``` function.  
Note that we can also get each of the minimum and maximum values and do the operation manually

```R
cat("Minimum:", min(data), "\n")
cat("Maximum:", max(data), "\n")
cat("Min and Max:", range(data), "\n") # returns the two values together
cat("Range:", diff(range(data)), "\n") # or: max(data) - min(data)

```

#### Interquartile Range

Like the name says, the interquartile range is the range applied to the first and third quartiles. It is usually more useful than the range because it is more robust and less prone to big changes due to a single dataset value. It is implemented using the ```IQR()``` function, but using the ```type=2``` flag to specify how to calculate the quartiles.  
Note that, just like in the previous section we can do the difference between quartile 1 and quartile 3 manually.

```R
cat("Quartile 1:", quartile(data, 0.25, type=2), "\n")
cat("Quartile 3:", quartile(data, 0.75, type=2), "\n")
cat("Interquartile Range:", IQR(data, type=2), "\n") # or: quartile(data, 0.75, type=2) - quartile(data, 0.25, type=2)

cat("Interquartile Range:", diff(quantile(data, c(0.25, 0.75), type=2))) # Another alternative
```

#### Standard Deviation

The standard deviation of a dataset is a way of measuring how far away from the mean are most of the values. It is given by the: sqrt(sumation((x - mean)²) / (len(values) - 1)).  
*Luckily*, in R it is simply defined by the function ```sd()```.

```R
cat("Standard Deviation:", sd(data), "\n")
```

#### Variance

Variance is given by the standard deviation squared (the expression without the sqrt) and serves a similar purpose.  
In R, it is given by the function ```var()```.

```R
cat("Variance:", var(data), "\n")
```

#### Coefficient of Variation (CV)

The standard deviation only gives us a value with little to no context. In order to better understand this value, what is usually done is compare it to the mean of the dataset.  
The cofficient of variation is given by the ratio between the standard deviation and the mean.  
In R, we can only obtain it manually using the ratio, since there is no standard function.

```R
cat("Coefficient of Variation:", sd(data)/mean(data), "\n")
```

## Final Notes

- Most of these functions can also receive the parameter ```na.rm=TRUE/FALSE``` which specifies whether or not missing values should be considered in the calculations
  - Note that missing values can also be removed previously from the dataset using the function ```na.omit(data)``` and assigning the result to a new variable