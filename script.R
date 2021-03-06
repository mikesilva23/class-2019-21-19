library(tidyverse)
library(devtools)



arizona <- read.csv(file = "https://raw.githubusercontent.com/TheUpshot/2018-live-poll-results/master/data/elections-poll-az06-3.csv")


arizona %>%
  select(response, educ4, final_weight) %>%
  group_by(educ4, response) %>% 
  summarize(total = n()) %>%
  filter(educ4 != "[DO NOT READ] Don't know/Refused") %>%
  spread(key = response, value= total) %>%
  
  
  
  
  
  