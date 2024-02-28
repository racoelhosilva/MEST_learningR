<h1 align="center"> Graphing Settings </h1>

<h2>Table of Contents </h2>

- [Introduction](#introduction)
- [Multiple Graphs in the Same File](#multiple-graphs-in-the-same-file)



## Introduction

As you might see from looking at my solutions for some of the exercises, the graph outputs are slightly altered due to some commands tricks in R. In this file, I'll list some of those tricks and settings, feel free to add/recommend more :D

## Multiple Graphs in the Same File

One of the best and most useful tricks is to generate images with multiple graphs. Sometimes, datasets require multiple plots to be generated for a better analysis and R allows doing this using the ```par()``` function.  
By calling ```par(mfrow=c(x,y))``` we can define the output image to be generated with x rows and y columns. After this, each time we plot something, the new graph is added to the image from top left to bottom right until it is filled.  

```R
par(mfrow=c(3,1)) # 3 rows and 1 column (vertically stacked)
par(mfrow=c(1,2)) # 1 row with 2 columns (side-by-side)
par(mfrow=c(2,2)) # 2 rows and 2 columns (square)
```

Note: this change is fixed unless we revert it so it's a good practice to always revert it after plotting the necessary graphs with ```par(mfrow=c(1,1))```.
