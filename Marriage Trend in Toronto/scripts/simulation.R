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

#### Simulate data ####
set.seed(666)

# Define the start and end date
start_date <- as.Date("2011-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")



