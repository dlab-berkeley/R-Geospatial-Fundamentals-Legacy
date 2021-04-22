# Common questions and answers

This document lists comment questions and their respective answers pointing to specific parts of the workshop files. 

How do I install everything?
- Checkout the main [README](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/README.md)

How do I read in geospatial data vector file formats?
- [Lesson 2.2 and 2.6](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/02_Introduction_to_sf.Rmd)

How do I save geospatial data file formats?
- [Lesson 2.6](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/02_Introduction_to_sf.Rmd)

What are Coordinate Reference Systems
- [Lesson 1](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/01_Overview_Geospatial_Data.pdf)
- [Lesson 3.4](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/03_CRS_Map_Projections.Rmd)

I’m trying to plot two shapefile together but they’re not showing up
- This is the #1 folks run into! It’s most likely that the CRS for your two datasets are different.
- [Lesson 3.1-3.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/03_CRS_Map_Projections.Rmd)

How do I get the CRS of my data and transform it?
- [Lesson 3.5, 3.7](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/03_CRS_Map_Projections.Rmd)

How do I set the CRS of my data if it’s missing?
- [Lesson 3.6](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/03_CRS_Map_Projections.Rmd)

I have a CSV that has latitude and longitude values, how do I coerce it to be a GeoDataFrame?
- [Lesson 4.2](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/04_More_Data_More_Maps.Rmd)

How do I find the geospatial extent of my data?
- [Lesson 4.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/04_More_Data_More_Maps.Rmd)

How do I create a choropleth map?
- [Lesson 5.1](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

What kinds of color maps are there?
- [Lesson 5.1](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

What types of data is best for choropleth mapping?
- [Lesson 5.2](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

What is a classification scheme and how do I use different ones in Python?
- [Lesson 5.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

Can I define my own classification scheme?
- Yes! 
- [Lesson 5.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

How do I create a point map?
- [Lesson 5.4](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

How does mapping categorical data different from mapping quantitative data?
- [Lesson 5.5](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/05_Data-Driven_Mapping.Rmd)

How do I calculate the area or length of my GeoDataFrame?
- [Lesson 6.1](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/06_Spatial_Queries.Rmd)

What is a relationship query?
- [Lesson 6.2](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/06_Spatial_Queries.Rmd)

How do I do a proximity analysis?
- [Lesson 6.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/06_Spatial_Queries.Rmd)

How do I know what units my buffer size is in?
- The units are what your CRS says they are.
- [Lesson 6.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/06_Spatial_Queries.Rmd)

Can I do a merge like I do in base R?
- Yes!
- [Lesson 7.1](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/07_Joins_and_Aggregation.Rmd)

What is a spatial join and how do I do it?
- [Lesson 7.2](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/07_Joins_and_Aggregation.Rmd)

What’s the best way to aggregate my geospatial data (for example, after doing a join)?
- [Lesson 7.3](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/07_Joins_and_Aggregation.Rmd)

Do you have any full workflows we can work through and ask questions about?
- Yes!
- [Lesson 8](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/08_Pulling_It_All_Together.Rmd)


I want to start using raster data. Where’s a good place ot start?
- [Lesson 9](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/blob/master/docs/09_Raster_Data.Rmd)

---
<div style="display:inline-block;vertical-align:middle;">
<a href="https://dlab.berkeley.edu/" target="_blank"><img src ="assets/images/dlab_logo.png" width="75" align="left">
</a>
</div>

<div style="display:inline-block;vertical-align:middle;">
    <div style="font-size:larger">&nbsp;D-Lab @ University of California - Berkeley</div>
    <div>&nbsp;Team Geo<div>
</div>

