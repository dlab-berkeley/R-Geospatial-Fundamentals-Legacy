# Geospatial Fundamentals in R with `sf` 

This is the repository for D-Lab's __Geospatial Fundamentals in R with `sf`__ workshop.

__View the Slides__:
- [Part 1 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/01-core_concepts_and_plotting.html#1) 
- [Part 2 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/02-spatial_analysis.html#1)
- [Part 3 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/03-raster_data.html#1)

<!---
__View the Slides or RStudio Binders__:
HERE IS CODE FOR IF/WHEN WE IMPLEMENT BINDER
- [Part 1 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/01-core_concepts_and_plotting.html#1), [![Part I](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/01-core_concepts_and_plotting/master?urlpath=rstudio)
- [Part 2 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/02-spatial_analysis.html#1), [![Part II](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/02-spatial_analysis/master?urlpath=rstudio)
- [Part 3 slides](https://dlab-geo.github.io/Geospatial-Fundamentals-in-R-with-sf/docs/03-raster_data.html#1), [![Part III](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/dlab-geo/Geospatial-Fundamentals-in-R-with-sf/docs/03-raster_data/master?urlpath=rstudio)
--->

(For the old workshop, using the `sp` package, go ![here](https://github.com/dlab-geo/r-geospatial-workshop/).)

--

## Content outline
  - __Part I: Core concepts, vector data, and plotting__
      - Basic geospatial concepts
      - Basic vector data
      - Basic plotting (`base::plot` and the `ggplot2` package)
      - Basemaps and geocoding with the `ggmap` package (a glimpse)
      - Geospatial data structures (the `sf` package)
      - Managing coordinate reference systems (CRS)
      - Advanced plotting (the `tmap` package)
  - __Part II: Spatial analysis__
      - Review of Part I material
      - Spatial measurement queries
      - Spatial relationship queries
      - Spatial and non-spatial joins
      - Distance queries
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

We assume that participants have working familiarity with the R language
(though participants without this have still reported useful learning about
geospatial concepts).

## Technology requirements

Please bring a laptop with the following:

* [R version](https://cloud.r-project.org/) 3.5 or greater
* [RStudio integrated development environment (IDE)](https://www.rstudio.com/products/rstudio/download/#download) is
highly recommended but not required.
* The R packages `ggplot2`, `ggmap`, `sf`, `units`, `tmap`, and `raster` installed, minimally

## Resources

- The [Geocomputation with R](https://geocompr.robinlovelace.net/) textbook (Lovelace, Nowosad, and Muenchow, 2019) is an excellent resource for getting up and running.
- The [`tmap` getting started](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html) documentation is a great source of plotting support.
- The [`sf` vignettes](https://cran.r-project.org/web/packages/sf/vignettes/sf1.html) and ![`sf` cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/sf.pdf) are great resources for developing and debugging `sf` code.
- The [`raster` vignettes](https://cran.r-project.org/web/packages/raster/vignettes/Raster.pdf) should help you troubleshoot that package.

