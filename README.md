# Pewlett-Hackard Employee Analysis

CWRU Data Analytics Module Seven Challenge


## Overview of Project

The project involved loading data into panda data frames, merging grouping and visualizing data and capabilities such as loc, formatting, pivot, resample and matplotlib.  

### Purpose

The purpose of the challenge was to gain insight into trends and factors by aggregate and summarize the data for ride fares and counts by city type and date along dimensions such as total fares, fares by type of city and fares per driver.  

## Analysis 

The analysis had several components:

(1) loading the csv files into dataframes and merging them together;  and

(2) building the basic sums and averages for things such as total fares and rides, and per-unit stats such as average fare per city type and driver; then combining them into an overall summary dataframe and formatting it; and 

(3) creating a dataframe grouped by both date and city type and using it as a basis from which to create a pivot df with an index of date, columns by city type and fares sum as values; 

(4) resampling the pivot dataframe, by week, and using this df to drive a line-graph visualization of the ride fares by city type over time


## Summary

The analysis was done in two ways, the first being an overall summary of ride volume, fares and drivers - with average stats on a per-ride and per-driver basis as indicated in the below table:  

## Summary

![img](https://github.com/fhsal/PyBer_rides/blob/main/images/summary.png)

This appears to indicate that there are many more drivers in the Urban cities by a wide margin than in either rural or suburban areas.  Although the number of rides is also larger and those rides have lower fares on average (which may imply shorter), on a proportional basis it is far beyond the other cities.  The impact of this and potential choices to be made regarding the number of drivers appropriate to service the demand may be an area of further analysis.  

The second aspect of the analysis was time-based, showing the trend from January through April for fares based upon the city type, below:

## Fare Trends

![img](https://github.com/fhsal/PyBer_rides/blob/main/images/chart.png)

This perspective is consistent with the overall summary in that urban fares are much higer than suburban and rural cities.   Although there is more variance in the urban fares, the fares appear to be relatively consistent over time.   

## Recommendations 

- Perform further analysis to determine the best balance of the number of drivers in each city type.  There are likely other factors beyond volume and revenue, such as pick-up times that would influence the right balance.  

- It does look like there may not be a need for so many urban drivers - alternatively, perhaps boosting the number of suburban or rural drivers may drive volume and revenue upwards.   

- Better understanding the cause of the higher levels of fluctuation in the urban fares and the spike across the board in late February may also be worthwhile 


