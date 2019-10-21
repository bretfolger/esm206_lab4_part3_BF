# -----------------------
#----Here begins Quiz #1-
#----Bret Folger --------
#----10/21/19------------

library(tidyverse)
library(janitor)
library(here)


# Read in my data: 

db <- read_csv(here::here("data", "disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)
               