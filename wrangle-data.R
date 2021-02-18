#Now we are ready to write a script to read this data and prepare a table that we can use for analysis. Call the file wrangle-data.R
library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <-murders %>% mutate(region = factor(region),
                             rate = total / population * 10^5)
save(murders, file = "rdas/murders.rda")