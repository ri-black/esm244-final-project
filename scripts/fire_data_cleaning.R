library(here)
library(janitor)
library(tidyverse)
library(dplyr)

fire_data_clean <- read_csv(here("data", "fire_data_raw.csv")) %>% 
  clean_names() %>% select(year, county_nam, gis_acres, fire_name) %>% 
  filter(year >= 2000 & year <= 2024) %>% 
  drop_na(county_nam)

write_csv(fire_data_clean, here("data", "fire_data_clean.csv"))

