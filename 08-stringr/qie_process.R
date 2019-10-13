library(dplyr)
library(stringr)
qie = readLines('corpus/qie.txt') %>%
  str_match('【(\\S{4})】') %>%
  .[, 2] %>%
  na.omit()


AABB <- qie[str_detect(qie, '(.)\\1(.)\\2')]
ABAC <- qie[str_detect(qie, '(.).\\1.')]
ABCB <- qie[str_detect(qie, '.(.).\\1')]
ABCA <- qie[str_detect(qie, '(.)..\\1')]
