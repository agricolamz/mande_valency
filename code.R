library(tidyverse)
df <- read_csv("data/raw_data.csv")

df %>% 
  filter(!is.na(orthography)) %>% 
  select(id, Russian, English, orthography, transcription, prs, form2, form3, pos, `additional forms`, kk, jena200, gld110) %>% 
  arrange(id) %>% 
  write_csv("data/data.csv")
