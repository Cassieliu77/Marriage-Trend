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

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
