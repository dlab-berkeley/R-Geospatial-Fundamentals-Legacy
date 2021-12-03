#
# 09_Raster_solutions.R
#


#------------------------------------------------------------------
# Challenge 1
#------------------------------------------------------------------
# transform SFtracts_NAD83 to WGS84
SFtracts_WGS84 <- st_transform(SFtracts_NAD83, st_crs(SFhomes15_WGS84))

# Check crs
st_crs(SFtracts_WGS84)
#or
st_crs(SFtracts_WGS84)$proj4string

#Plot the WGS84 homes on top of the transformed SF tracts
plot(SFtracts_WGS84$geometry)

#------------------------------------------------------------------
# Challenge 2
#------------------------------------------------------------------
# # read in nlcd data
nlcd <- raster(here("notebook_data",
                    "part_3",
                    "nlcd2011_sf.tif"))

# plot nlcd
plot(nlcd)


#------------------------------------------------------------------
# Challenge 3
#------------------------------------------------------------------

# Reproject and crop our NLCD data

# check projection equality
st_crs(nlcd) == st_crs(SFtracts_WGS84)


#reproject
nlcd_WGS84 = projectRaster(nlcd, 
                           projectExtent(nlcd, st_crs(SFtracts_WGS84)$proj4string))

#check projection equality again
st_crs(nlcd_WGS84) ==  st_crs(SFtracts_WGS84)

#crop
nlcd_WGS84_crop = crop(nlcd_WGS84, SFtracts_WGS84)



#------------------------------------------------------------------
# Challenge 4
#------------------------------------------------------------------

# extract the mean nlcd_simple values to tract polygons
greenspace <- extract(nlcd_green, SFtracts_WGS84, fun=mean)


#------------------------------------------------------------------
# Challenge 5
#------------------------------------------------------------------