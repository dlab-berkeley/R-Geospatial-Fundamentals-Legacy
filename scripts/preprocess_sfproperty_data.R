# This script reads in data that was downloaded from:
# https://data.sfgov.org/Housing-and-Buildings/Assessor-Historical-Secured-Property-Tax-Rolls/wv5m-vpq2
# and preprocesses it to make it smaller and more appropriate for a workshop

#setwd("~/Documents/gis_data/sfdata/prop_parcels")
workshop_dir <- "~/Documents/Dlab/workshops/2018/r-geospatial-workshop"
setwd(workshop_dir)
dir()

# ======

d1 <- read.csv("Assessor_Historical_Secured_Property_Tax_Rolls.csv", strip.white = T, stringsAsFactors = F)
d1 <- subset(d1, Closed.Roll.Fiscal.Year == 2015)

#Take a look at the input column labels
names(d1)

# Identify the columns to keep
d2<- d1[c("Closed.Roll.Fiscal.Year","Current.Sales.Date","Property.Location","Year.Property.Built","Number.of.Bedrooms",
          "Number.of.Bathrooms","Number.of.Rooms","Number.of.Stories","Number.of.Units","Property.Area.in.Square.Feet","Closed.Roll.Assessed.Improvement.Value","Closed.Roll.Assessed.Land.Value",
          "Neighborhoods...Analysis.Boundaries","Location","Supervisor.District")]

# New names for the columns
newnames<-c("FiscalYear","SalesDate","Address","YearBuilt","NumBedrooms",
            "NumBathrooms","NumRooms","NumStories","NumUnits","AreaSquareFeet","ImprovementValue","LandValue",
            "Neighborhood","Location","SupeDistrict")

# Rename the columns
colnames(d2) <- newnames

# Add a total value column
d2$totvalue <- d2$LandValue + d2$ImprovementValue

# Subset to reduce size
d3<- subset(d2, (totvalue >= 100000) & (totvalue <= 3000000))
nrow(d3)

# Take a look at the distribution of data values
hist(d3$totvalue)

# Make the date an R date format
d3$SalesDate <- as.Date(d3$SalesDate, format="%m/%d/%Y")

# Add a year column
d3$SalesYear <- format(as.Date(d3$SalesDate, format="%m/%d/%Y"), '%Y')

# Extract lat lon from the Location column
d3$lat <- vapply(strsplit(d3$Location, ", ", fixed = TRUE), "[", "", 1)
d3$lat <- as.numeric(gsub("\\(","",d3$lat))

d3$lon <- vapply(strsplit(d3$Location, ", ", fixed = TRUE), "[", "", 2)
d3$lon <- as.numeric(gsub("\\)","",d3$lon))

# Sort data frame by totvalue
d3 <- d3[order(d3$totvalue),]

write.csv(d3, file="~/Documents/Dlab/workshops/2018/r-geospatial-workshop/data/sf_properties.csv", row.names = F)

#remove big objects
rm(d1)
rm(d2)

library(dplyr)
sfhomes_25k <- sample_n(sfhomes, 25000)
write.csv(sfhomes_25k, file="./data/sf_properties_25ksample.csv", row.names = F)

