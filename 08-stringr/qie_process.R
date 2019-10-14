library(dplyr)
library(stringr)
qie = readLines('corpus/qie.txt') %>%
  str_match('【(\\S{4})】') %>%
  .[, 2] %>%
  na.omit() %>%
  unique()

AABB <- qie[str_detect(qie, '(.)\\1(.)\\2')]
ABAC <- qie[str_detect(qie, '(.).\\1.')]
ABCB <- qie[str_detect(qie, '.(.).\\1')]
ABCA <- qie[str_detect(qie, '(.)..\\1')]


qie = readLines('corpus/qie.txt')
qie = qie[str_detect(qie, '【(\\S{1,})】')] %>%
  na.omit() %>%
  sample(10000) %>%
  unique()
writeLines(qie, 'corpus/qie_sample.txt')
#df = data.frame(id = seq_along(qie), qie = qie)
#  write.csv(df, 'corpus/qie.csv', row.names = F)
