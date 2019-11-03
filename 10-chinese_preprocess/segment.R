library(jiebaR)
library(stringr)
library(quanteda)
source("helper_func.R")

fps <- list.files("samesex_marriage/txt", full.names = T)

titles <- vector("character", length(fps))
topics <- vector("character", length(fps))
contents <- vector("character", length(fps))

# Initialize jieba
seg <- worker(bylines = F, symbol = T)

for (i in seq_along(fps)) {
  # Get topic from file name
  topics[i] <- str_split(basename(fps[i]), "_")[[1]][1]
  id[i] <- str_split(basename(fps[i]), fixed("."))[[1]][1]
  
  # Read post from file
  post <- readLines(fps[i])
  
  # Get post title (First line of file)
  titles[i] <- post[1]
    
  # Segment post
  segged <- segment(post[-(1:2)], seg)
  contents[i] <- segged %>% trimws() %>% paste(collapse = " ")
}


# Combine results in a df
df <- tibble::tibble(id = id, title = titles, topic = topics, content = contents)
#print(df)


qcorp <- df2qcorp(df, docid_colname = "id" , text_colname = "content")
qcorp_tokens <- tokens(qcorp, "fastestword")
x = kwic(qcorp_tokens, "同志", window = 7, valuetype = "regex")
View(x)

kwic(qcorp_tokens, phrase("同志 圈")) %>% View()

textstat_collocations(qcorp_tokens)
tokens_select(qcorp_tokens, )