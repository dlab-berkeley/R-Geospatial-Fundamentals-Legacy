library(sf)     # spatial objects and methods
library(tmap)   # mapping spatial objects

sfhomes <- read.csv('data/sf_properties_25ksample.csv', 
sfhomes15 <- subset(sfhomes, as.numeric(SalesYear) == 2015)
sfhomes15_sf <- st_as_sf(sfhomes15, coords = c('lon', 'lat'), crs=4326)
sfhomes15_utm <- st_transform(sfhomes15_sf, st_crs(sfhighways))

bart <- read.csv("./data/bart.csv", stringsAsFactors = F)
bart_sf = st_as_sf(bart, coords = c('X', 'Y'), crs = 4326)
bart_utm <- st_transform(bart_sf, st_crs(sfhomes15_utm))

sfboundary <- st_read('./data', 'sfboundary')
sfboundary_utm <- st_transform(sfboundary, st_crs(sfhomes15_utm))

sfhighways = st_read('./data', 'sfhighways')

sftracts <- st_read("./data", "sftracts_wpop")
sftracts_utm = st_transform(sftracts, st_crs(sfhomes15_utm))

homes_with_tracts <- st_within(sfhomes15_utm, sftracts)
sfhomes15_utm$home_geoid <- sftracts_utm[unlist(homes_with_tracts),]$GEOID

