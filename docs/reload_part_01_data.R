#A short script to restore all loaded data from Part I

library(sf)

### SF HOMES

# Read in from CSV file
SFhomes <- read.csv('data/sf_properties_25ksample.csv', 
                    stringsAsFactors = FALSE)
# subset the data
SFhomes15 <- subset(SFhomes, as.numeric(SalesYear) == 2015)
# convert to an `sf` object with a defined CRS (WGS84)
SFhomes15_sf <- st_as_sf(SFhomes15, coords = c('lon', 'lat'),
                         crs = 4326)

### BART STATIONS

#Read in from a CSV.
bart <- read.csv("./data/bart.csv", stringsAsFactors = F)
#Convert to sf object
bart_sf <- st_as_sf(bart, coords = c('X', 'Y'), crs = 4326)


### LANDMAKRS

#Read in from a CSV
landmarks <- read.csv("./data/landmarks.csv") 
#Convert to sf
landmarks_sf = st_as_sf(landmarks, coords = c('X', 'Y'), crs = 3857)
#Reproject to lonlat
landmarks_lonlat = st_transform(landmarks_sf, st_crs(SFhomes15_sf))


### SF BOUNDARY

#Read in from shapefile
SFboundary <- st_read('./data', 'SFboundary')


### SF HIGHWAYS

#Read in from shapefile
SFhighways = st_read('./data', 'SFhighways')
#Transform to lonlat
SFhighways_lonlat = st_transform(SFhighways, st_crs(SFhomes15_sf))


### SF CENSUS TRACTS

#Read in from shapefile
tracts = st_read(dsn = './data', layer = 'sftracts')
#Transform to lonlat
tracts_lonlat = st_transform(tracts, crs = 4326)