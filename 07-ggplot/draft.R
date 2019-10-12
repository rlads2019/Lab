library(dplyr)

diamonds2 <- diamonds[sample(1:nrow(diamonds), size = 1000, replace = F), ]

diamonds2 %>% filter(carat < .5) %>% sample_n(200) %>%
ggplot() +
  geom_point(aes(x = carat, y = x),
             #position = "jitter"
             )

ggplot(diamonds2) +
  geom_bar(aes(x = cut, fill = clarity),
           position = "dodge")