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

# create a subsetl, then graph:

db_sub <- db %>% 
  filter(country_name %in% c("United States", "Afghanistan", "Japan", "Somalia" )) %>% 
  filter(age_group == "0-6 days", sex == "Both")

# Create a basic line graph

ggplot(db_sub, aes(x = year, y = deaths_per_100k)) +
  geom_line(aes(color = country_name))
               