Coursera - Exploratory Data Analysis (Project 1)
================================================
This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

The purpose of this project is to load the above data into R and produce four (4) exploratory graphs. This is a guide on how to produce plots 1 to 4, as requested by course project.

## Input file

* The text file household_power_consumption.txt (semicolon ";" delimited)


## Processing with R

* There four R scripts included, each one producing a png file including plots. Each R script consists of two parts:
  * Loading the data into R and transforming it as appropriate:
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
