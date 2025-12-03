# ViewFinder-for-Everything
GUI frontend for geo-tagged photo search in Everything.  
Uses a map to specify the GPS coordinates to search for in Everything.


![ViewFinder for Everything](https://github.com/user-attachments/assets/ffbcf62b-34ce-4544-91bd-05e76fad6ee9)


## How to use

Start **ViewFinder for Everything.cmd** 
  
Drag the map to a location where the desired photos are located.  
Use the mouse scrollwheel to zoom in/out.  

Photos that are taken in the visible part of the map will be searched for.  
The **Open in Everything** button will list them in Everything.  

Optionally adding a date range and/or time range and/or comment(s) helps to further reduce the amount of found photos.  
<br>
<br>
**Date range**  
Enter start date, end date or both.  
  
**Time range**  
Enter start time, end time or both.  
To find photos taken around midnight, enter a starttime greater than the endtime.  
For example: Timerange = 22:00..02:00  
  
**Comments**  
Comments syntax (example): "eiffel tower" paris "big ben" london   
Searching for comments is case-insensitive.  
Use *Any Word* or *All Words* depending on the situation.  

## Installation

1. Download the release (zip-file)
2. Extract it to a folder
3. Done!

## Requirements

1. **Everything 1.5**, minimum version **1.5.0.1401**
2. **es: URL protocol** needs to be enabled in Everything.  
( under Menu => Tools => Options => General )  
3. LAtitude and longitude need to be indexed: 
    1. In Everything, go to Menu => Tools => Options => Indexes => **Properties**
    2. Click the **Add** button
    3. In the **Search** field, type *tude*
    4. Select **latitude** and **longitude**
    5. OK
    6. Back in the Properties list, select Latitude and configure where (not) to search for geotagged photos.
    7. Do the same for longitude
    8. OK
    9. Let Everything scan all matching photos for these properties
    (progress is shown in he status bar)
  
