
# Converting Rmd to Jupyter Notebooks

# Install package
devtools::install_github("mkearney/rmd2jupyter")
# Load Library
library(rmd2jupyter)

# Set workind directory and create subdirectory for convereted files
setwd("~/Documents/repos/Geospatial-Fundamentals-in-R-with-sf/docs")
dir.create(file.path("ipynb/"), showWarnings = FALSE)

# Convert rmd to Jupiter 
files <- list.files(pattern = "\\.Rmd$")
for (rmdfile in files){
  rmd2jupyter(rmdfile)
  file.rename(from = gsub(".Rmd", ".ipynb", rmdfile),
              to = paste0("ipynb/",rmdfile))
}