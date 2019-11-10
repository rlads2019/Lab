library(quanteda)
library(tidytext)
library(dplyr)

df <- readRDS("samesex_marriage.rds")
qcorp <- corpus(df, docid_field = "id", text_field = "content")

# Group docs according to topic
qcorp_grouped <- texts(qcorp, groups = "topic") %>% corpus()

# Lexical diversity: 下福盟 vs. 伴侶盟
qcorp_tokens <- tokens(qcorp_grouped, "fastestword")
textstat_lexdiv(qcorp_tokens)

tokens_tidytext <- df %>% unnest_tokens(output = "word", input = "content",
                                        token = "regex", pattern = " ")

tokens_tidytext %>% 
  group_by(topic, word) %>%
  summarise(n = n()) %>%
  arrange(desc(word), topic) %>%
  ungroup() %>%
  group_by(topic) %>%
  summarise(TTR = n() / sum(n))

# Viz
library(ggplot2)
tokens_tidytext %>% 
  group_by(word) %>%
  summarise(n = n()) %>%
  mutate(word = reorder(word, n)) %>%
  top_n(15) %>%
  ggplot() +
    geom_bar(aes(word, n), stat = "identity") +
    coord_flip()


# KWIC
kwic(tokens(qcorp, "fastestword"), pattern = "這種", window = 10, valuetype = "regex", separator = "") %>% View


