#library(dplyr)
#library(ggplot2)
diam <- ggplot2::diamonds %>% sample_n(1500)

summarised <- diam %>% 
  group_by(cut) %>%
  summarise(count = n())

ggplot(summarised) +
  geom_bar(aes(x = cut, y = count), 
           stat = "identity")