#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Yongqi Liu
# Date: 19 September 2024 
# Contact: cassieliu.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Gather some data on Marriage Licence Statistics in Toronto
# Any other information needed? NA


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
package

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data


#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, file="data/raw_data/raw_data.csv") 

         
