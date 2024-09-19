#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Yongqi Liu
# Date: 19 September 2024 
# Contact: cassieliu.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Gather some data on Marriage Licence Statistics in Toronto
# Any other information needed? NA

#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test if variable is integer
all(data$number_of_marriage %% 1 == 0) 

# Test for NAs
all(is.na(data$number_of_marriage))