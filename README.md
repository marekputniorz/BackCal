# BackCal
Solution for backup of calendars in Control-M application. 


In case that some calendars will be accidentaly deleted we developed API solution for backup of calendars. Calendars are stored in ***/ctm_stor/calendars_backup***.
In this directory there are three folders Periodic, Regular and Rule-Based. Each backup is filtered based on the type of the calendar to each folder and stored to these directories because it was found that there is issue when you want to export two calendars with the same name to one .json file. 
Backups are named by environement and date of creation for example ***ctmtest1_231116_Calendars.json***. 

 

## How to use 

In case that some calendars will be accidentaly deleted you can go to Control-M server, navigate to /ctm_stor/calendars_backup and under ctmuser execute command below: 

 
```Bash
ctm deploy calendars.json -a "subject=Deploying calendars&description=Deploying calendars"
```
 

In case that audit is enabled in you Control-M application you need to use the -a parameter.

 

## Removal of calendars 

Calendars which are stored in /ctm_stor/calendars_backup in each folders which are older than 8 days are automaticly removed every monday. 
Also one backup per month is copied to monthly folder which is in every these three directories where the calendar will be stored and will not be affected by cleaning. 

 

## Known issues 

On most of the environments it is not so easy to deploy calendars. Sometimes it will give some errors. In case that these errors will show you need to modify calendars.json based on the description of these errors. 
