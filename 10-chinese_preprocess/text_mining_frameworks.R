library(tidytext)
library(dplyr)
source("helper_func.R")

##### Preprocess #######
## 斷詞 --> df (one doc per row, meta-info) ##
doc1 <- "尋尋 覓覓 冷冷 清清" 
doc2 <- "淒淒 慘慘 戚戚 你好嗎 好好好"

corp_df <- tibble(doc = 1:2, text = c(doc1, doc2))


###### Tidytext framework: one-token-per-document-per-row ######
corp_df %>% 
  unnest_tokens(output = word, input = text,
                token = "regex", pattern = " ")

####### quanteda workflow ##########
qcorp <- df2qcorp(corp_df, "doc", "text")
qcorp_tokens <- tokens(qcorp, "fastestword")
kwic(qcorp_tokens, "[^好]好[^好]", window = 7, valuetype = "regex")
kwic(qcorp_tokens, ".好.", window = 7, valuetype = "regex")
