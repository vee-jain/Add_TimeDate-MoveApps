# Add time and date columns

MoveApps

Github repository: *github.com/vee-jain/Add_TimeDate-MoveApps*

## Description
Add date, time, weekdays, day, month, and year columns to dataframe.

## Documentation
The App converts the input data into a dataframe and adds a date column. The user can specify which additional columns (time, weekdays, day, month, year) should be added to the dataframe. The resulting artefact is a csv with the user-specified columns added.

### Input data
move2 location object

### Output data
move2 location object

### Artefacts
`data_with_cols.csv`: csv-file containing the additional user-specified columns.

### Settings 
**Time (HH:MM:SS):** selection setting to indicate if a time column should be added to the data (TRUE) or not (FALSE).

**Weekdays (Mon-Sun):** selection setting to indicate if a weekday column should be added to the data (TRUE) or not (FALSE).

**Day (dd):** selection setting to indicate if a day column should be added to the data (TRUE) or not (FALSE).

**Month (mm):** selection setting to indicate if a month column should be added to the data (TRUE) or not (FALSE).

**Year (yyyy):** selection setting to indicate if a year column should be added to the data (TRUE) or not (FALSE).


### Most common errors
Please ensure that your timestamp column is set to the desired timezone prior to using this App.

Please post an issues [here](https://github.com/vee-jain/Add_TimeDate-MoveApps/issues) if you encounter errors or problems.
