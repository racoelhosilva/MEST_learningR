<h1 align="center"> Graphing Settings </h1>

<h2>Table of Contents </h2>

- [Introduction](#introduction)
- [Multiple Graphs in the Same File](#multiple-graphs-in-the-same-file)
- [Changing Color Scheme and Fonts](#changing-color-scheme-and-fonts)
- [Changing the Plot Characters in Graphs](#changing-the-plot-characters-in-graphs)



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

## Changing Color Scheme and Fonts

A cool trick that can also be done is changing the output graphics (especially to match user-defined themes). This, can also be done with the ```par()``` function but with different flags. Like before, if it is not reverted, the settings will remain through the entire session (but this is usually what we want so no big problems).  
There a few parameters that need to be changed, but the good thing is that the command can then be copied to other files to get the same results (the theme loads everywhere).  
The following example is the one I use to change to a Gruvbox theme with JetBrainsMono as the font.

```R
par(bg = "#282828",         # Background color
    col="#ebdbb2",          # Main color
    col.axis="#ebdbb2",     # Axis colors
    col.lab="#ebdbb2",      # Label colors
    col.main="#ebdbb2",     # Main title colors
    fg="#ebdbb2",           # Foreground color
    family="JetBrainsMono"  # Text font
    )
```

Note: this change is different from the parameter ```color``` passed to most of the plots. These changes are relative to the output image and the parameter is the color used for marking values, dots, bars... in the graphs

## Changing the Plot Characters in Graphs

In some graphs where there are certains markings or plot characters we can use a parameter passed to the plot to force the use of a different symbol.  
The parameter is ```pch=``` and it can take multiple values as specified in the following image: 

<p align="center">
<img src="https://www.statmethods.net/images/points.png" alt="Possible values and representations for pch">
</p>

```R
plot(
    ...
    pch=19
)
```

Note: this same parameter can also be passed to the par function to make it the default plot character for the session (although I believe it can be overwritten if passed as a function parameter to the plot functions)