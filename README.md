# Pewlett-Hackard Employee Analysis

CWRU Data Analytics Module Seven Challenge


## Overview of Project

The project involved loading employee dataa into a Postgress SQL database, selecting, joining, and exporting several result tables with specific views of the data back out into csv files.  

### Purpose

The purpose of the challenge was to gain insight into the employee population around aspects such as retirement eligiblity, titles and mentorship.  

## Analysis 

The analysis had several components:

(1) loading the csv files into Postgress database;  and

(2) creating several tables for the purpose of segmenting and analyzing the data, such as departments, emoloyees, titles, retirement info, etc.; and 

(3) joining several of the tables together to produce new tables with retirement, unique titles, mentorship eligibility, etc. ; 

(4) exporting the new post-analysis table data to csv files


## Summary

Bringing together the supplied employee csv data and joining together the title, department and employee information makes it possible to identify how many employees are eligible for retirement, what departments they come from, their titles.   Additionally, we identified those employees eleigible for mentoring. 

There is a relatively large number of employees (over 40,000) potentially eligible to retire, particularly Senior Engineers and Senior Staff.   

Unfortunately, there are not enough staff ( ~2100) who are eligible for mentorship to fill the gap if all eligible to retire were do so.  Although it is unlikely they would all retire at the same time, more staff would need to be mentored to not have a potential problem when folks retire. 


## Retirement eligible 

![img](https://github.com/fhsal/Pewlett-Hackard-Analysis/blob/main/images/Retirement_eligible.png)

## Number of retirement eligible

![img](https://github.com/fhsal/Pewlett-Hackard-Analysis/blob/main/images/retirement_info.png)


## Retiring titles

![img](https://github.com/fhsal/Pewlett-Hackard-Analysis/blob/main/images/Retiring_titles.png)


## Unique Titles 

![img](https://github.com/fhsal/Pewlett-Hackard-Analysis/blob/main/images/unique_titles.png)

## mentorship_eligibility 

![img](https://github.com/fhsal/Pewlett-Hackard-Analysis/blob/main/images/mentorship_eligibility.png)



