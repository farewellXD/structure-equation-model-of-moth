Environmental variables clipped by moth collected sites
================

### Aim

using raster & rgdal package function to clip environmental variables information

the data we needed:
1. moth collection sites (GPS)
2. environmental layers
- TCCIP
- A GIS-based environmental database of Taiwan and Penghu islands

``` r
knitr::opts_chunk$set(echo = TRUE)
library(raster)
```

    ## Loading required package: sp

``` r
library(rgdal)
```

    ## rgdal: version: 1.2-16, (SVN revision 701)
    ##  Geospatial Data Abstraction Library extensions to R successfully loaded
    ##  Loaded GDAL runtime: GDAL 2.2.0, released 2017/04/28
    ##  Path to GDAL shared files: C:/Users/farewell/Documents/R/win-library/3.3/rgdal/gdal
    ##  GDAL binary built with GEOS: TRUE 
    ##  Loaded PROJ.4 runtime: Rel. 4.9.3, 15 August 2016, [PJ_VERSION: 493]
    ##  Path to PROJ.4 shared files: C:/Users/farewell/Documents/R/win-library/3.3/rgdal/proj
    ##  Linking to sp version: 1.2-6

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

Including Plots
---------------

You can also embed plots, for example:

![](environmental_variables_clipped_by_moth_collection_site_files/figure-markdown_github-ascii_identifiers/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
