library(jiebaR)
library(stringr)

fps <- list.files("samesex_marriage/txt", full.names = T)

titles <- vector("character", length(fps))
topics <- vector("character", length(fps))
contents <- vector("character", length(fps))
ids <- vector("character", length(fps))

# Initialize jiebaR
seg <- worker(user = "samesex_marriage/user_dict.txt")

for (i in seq_along(fps)) {
  # Get topic from file name
  topics[i] <- str_split(basename(fps[i]), "_")[[1]][1]
  
  # Read post from file
  post <- readLines(fps[i])
  
  # Get post title (First line of file)
  titles[i] <- post[1]
    
  # Segment post
  segged <- segment(post[-(1:2)], seg)
  contents[i] <- paste(segged, collapse = " ")
}


# Combine results in a df
df <- tibble::tibble(id = seq_along(titles), topic = topics, title = titles, content = contents)
#print(df)
saveRDS(df, "samesex_marriage.rds")


## quanteda framework
library(quanteda)
source("helper_func.R")
qcorp <- df2qcorp(df, docid_colname = "id" , text_colname = "content")
qcorp_tokens <- tokens(qcorp, "fastestword")
x = kwic(qcorp_tokens, "同志", window = 7, valuetype = "regex")
View(x)

kwic(qcorp_tokens, phrase("同志 圈")) %>% View()

textstat_collocations(qcorp_tokens)
tokens_select(qcorp_tokens, )


## tidytext framework
library(tidytext)
tokens <- df %>% 
  unnest_tokens(output = word, input = content,
                token = "regex", pattern = " ")
