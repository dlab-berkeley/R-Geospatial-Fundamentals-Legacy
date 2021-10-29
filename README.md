# R Geospatial Fundamentals

This is the repository for D-Lab's __R Geospatial Fundamentals__ workshop.

Geospatial data are an important component of data visualization and analysis in the social sciences, humanities, and elsewhere. The R programming language is a great platform for exploring these data and integrating them into your research. This workshop focuses on fundamental operations for reading, writing, manipulating and mapping vector data, which encodes location as points, lines and polygons.

<!--
CAN ADD SLIDES AGAIN LATER
__View the Slides__:
- [Part 1 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/01-core_concepts_and_plotting.html#1) 
- [Part 2 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/02-spatial_analysis.html#1)
- [Part 3 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/03-raster_data.html#1)
--->
<!---
__View the Slides or RStudio Binders__:
HERE IS CODE FOR IF/WHEN WE IMPLEMENT BINDER
- [Part 1 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/01-core_concepts_and_plotting.html#1), [![Part I](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/docs/01-core_concepts_and_plotting/master?urlpath=rstudio)
- [Part 2 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/02-spatial_analysis.html#1), [![Part II](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/docs/02-spatial_analysis/master?urlpath=rstudio)
- [Part 3 slides](https://dlab-berkeley.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/03-raster_data.html#1), [![Part III](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sf/docs/03-raster_data/master?urlpath=rstudio)

(For the old workshop, using the `sp` package, go [here](https://github.com/dlab-berkeley/Geospatial-Fundamentals-in-R-with-sp).)

--->

--

## Content outline
  - __Part I: Core concepts, vector data, and plotting__
      - Basic geospatial concepts
      - Basic vector data
      - Geospatial data structures (the `sf` package)
      - Basic plotting (`base::plot` and the `ggplot3` package)
      - Managing coordinate reference systems (CRS)
      - Advanced plotting (the `tmap` package)
      - Map overlays
  - __Part II: Spatial analysis__
      - Spatial measurement queries
      - Spatial relationship queries
      - Buffer analysis
      - Spatial and non-spatial joins
      - Aggregation
      - Continued mapping practice
  - __Part III: Raster data__
      - Raster concepts
      - Raster data structures (the `raster` package) 
      - Mapping with raster and vector data
      - Spatial analysis of raster and vector data
      - Raster reclassification
      - Raster stacks and raster algebra 
      
## Getting started

Please follow the notes in [participant-instructions.md](participant-instructions.md).

## Assumed participant background

We assume that participants have working familiarity with the R language,
including the topics covered in our [R-Fundamentals workshop](https://github.com/dlab-berkeley/R-Fundamentals) materials 
(though participants without this have still reported useful
learning about geospatial concepts). 


If you would like a refresher on R, you could review that workshop's materials,
or look to other online resources such as the
[Base R Cheat Sheet](https://rstudio.com/wp-content/uploads/2016/10/r-cheat-sheet-3.pdf) or the [Quick R website](https://www.statmethods.net/index.html).

## Technology requirements

Please bring a laptop with the following:

* [R version](https://cloud.r-project.org/) 3.5 or greater
* [RStudio integrated development environment (IDE)](https://www.rstudio.com/products/rstudio/download/#download) is
highly recommended but not required.
* The R packages `ggplot2`, `sf`, `here`, `units`, `tmap`, `mapview`, `tidyverse` and `raster` installed, minimally

## Resources

- The [Geocomputation with R](https://geocompr.robinlovelace.net/) textbook (Lovelace, Nowosad, and Muenchow, 2019) is an excellent resource for getting up and running.
- The [R sf package](https://r-spatial.github.io/sf/) webpage, especially the Articles tab of tutorials for getting started.
- The [`tmap` getting started](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html) documentation is a great source of plotting support.
- The [`sf` vignettes](https://cran.r-project.org/web/packages/sf/vignettes/sf1.html) and [`sf` cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/sf.pdf) are great resources for developing and debugging `sf` code.
- The [`raster` vignettes](https://cran.r-project.org/web/packages/raster/vignettes/Raster.pdf) should help you troubleshoot that package.

