# Geospatial Fundamentals in R with `sf` 

This is the repository for D-Lab's __Geospatial Fundamentals in R with `sf`__ workshop.

__Slides__:
[Part I](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/Part_1.html#1)
[Part II](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/Part_2.html#1)
[Part III](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/Part_3.html#1)

__RStudio Binder__:
[![Part I](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/Part_1/master?urlpath=rstudio)
[![Part II](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/Part_2/master?urlpath=rstudio)
[![Part III](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/Part_3/master?urlpath=rstudio)


(Visit ![here](https://github.com/dlab-geo/Geospatial-Fundamentals-in-R-with-sp/) to see the old workshop, __Geospatial Fundamentals in R with `sp`__ )
--

## Content outline
  - __Part I__: Rudiments and plotting
      - Basic geospatial concepts
      - Basic vector data
      - Basic plotting (`base::plot` and the `ggplot2` package)
      - Basemaps and geocoding with the `ggmap` package (a glimpse)
      - Geospatial data structures (the `sf` package)
      - Managing coordinate reference systems (CRS)
      - Advanced plotting (the `tmap` package)
  - __Part II__: Spatial analysis
      - Review of Part I material
      - Spatial analysis
        - Distance-based spatial analysis
        - Relationship-based spatial analysis
        - Spatial and non-spatial joins
      - Continued mapping practice
  - __Part III__: Raster data
      - Raster concepts
      - Raster data structures (the `raster` package) 
      - Mapping with raster and vector data
      - Spatial analysis of raster and vector data
      - Raster reclassification
      - Raster stacks and raster algebra 
      
## Getting started

Please follow the notes in [participant-instructions.md](participant-instructions.md).

## Assumed participant background

We assume that participants have working familiarity with the R language
(though participants without this have still reported useful learning about
geospatial concepts).

## Technology requirements

Please bring a laptop with the following:

* [R version](https://cloud.r-project.org/) 3.5 or greater
* [RStudio integrated development environment (IDE)](https://www.rstudio.com/products/rstudio/download/#download) is
highly recommended but not required.
* The R packages `ggplot2`, `ggmap`, `sf`, `tmap`, and `raster` installed, minimally

## Resources

The ![Geocomputation with R](https://geocompr.robinlovelace.net/) textbook is an excellent resource for getting up and running.
The ![`tmap` getting started](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html) documentation is a great source of plotting support.
The ![`sf` vignettes](https://cran.r-project.org/web/packages/sf/vignettes/sf1.html) and ![`sf` cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/sf.pdf) are great resources for developing and debugging `sf` code.
The ![`raster` vignettes](https://cran.r-project.org/web/packages/raster/vignettes/Raster.pdf) should help you troubleshoot that package.


## Slideshow

The slides were made using [xaringan](https://github.com/yihui/xaringan), which is a wrapper for [remark.js](https://remarkjs.com/#1). Check out Chapter 7 if you are interested in making your own! The theme borrows from Brad Boehmke's presentation on [Decision Trees, Bagging, and Random Forests - with an example implementation in R](https://bradleyboehmke.github.io/random-forest-training/slides-source.html#1).  


