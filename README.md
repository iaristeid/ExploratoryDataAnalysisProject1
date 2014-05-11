Coursera - Exploratory Data Analysis (Project 1)
================================================
This is a guide on how to produce plots 1 to 4, as requested by course project.

## Input file

* The text file household_power_consumption.txt (semicolon ";" delimited)


## Processing with R

* There four R scripts included, each one producing a png file including plots. Each R script consists of two parts:
  * Reading input file into R and preparing data:
    * The text file household_power_consumption.txt is read into a data frame
    * Only selected dates are filtered out
    * Date and Time strings are converted to date/time R Types
  * Plotting output
    * Plot1: A Histogram is plotted based on filtered Household power consumption data. Color, Main title, X-axis label and Y-axis limits are specifically set.
    * Plot2: A Plot of type line is plotted based on filtered Household power consumption data. Main title, X-axis and Y-axis labels are specifically set.
    * Plot3: A Plot of type line is plotted based on filtered Household power consumption data. X-axis and Y-axis labels are specifically set. Two extra lines of different colors are plotted on top of it. 
    * Plot4: A grid of four plots (2x2) is created. Each plot is added to grid sequentially. The first and second plots are line plot with specific labels, the third plot is a line plot with two extra lines with different colors on top and the third plot is also a line plot with specific labels.


## Output files

* Four png files (one per R script), plot1.png, ..., plot4.png
