library(ggplot2)
library(sf)
SFhomes <- read.csv('data/sf_properties_25ksample.csv', 
                    stringsAsFactors = FALSE)

# Take a look at first 5 rows and a few of the columns
SFhomes[1:5,c("YearBuilt","totvalue","AreaSquareFeet","Neighborhood",
              "NumBedrooms")]
SFhomes15 <- subset(SFhomes_low2high, as.numeric(SalesYear) == 2015)

bart <- read.csv("./data/bart.csv")
landmarks <- read.csv("./data/landmarks.csv")

tracts = st_read(dsn = './data', layer = 'sftracts')

SFhomes15_sf = st_as_sf(SFhomes15, coords = c('lon', 'lat'), crs = 4326)
