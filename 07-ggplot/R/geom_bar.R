summarised <- diam %>% 
  group_by(cut) %>%
  summarise(count = n())

ggplot(summarised) +
  geom_bar(aes(x = cut, y = count), 
           stat = "identity")