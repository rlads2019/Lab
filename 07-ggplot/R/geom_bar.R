summarised <- diam %>%
  group_by(cut) %>%
  summarise(count = n())

ggplot(summarised) +
  geom_bar(mapping = aes(x = cut, y = count), stat = "identity")