library(readr)
babynames <- read_csv("~/Desktop/Lab/datasets/babynames.csv")

library(dplyr)
babynames %>% filter(year >= 2013 | year <= 1885) %>% 
    arrange(year, desc(sex)) %>% 
    #group_by(year, sex) %>%
    #mutate(prop2 = n/sum(n)) %>% View()
    #mutate()
    write_csv('babynames.csv')
