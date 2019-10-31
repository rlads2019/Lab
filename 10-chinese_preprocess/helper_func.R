library(dplyr)

# To corpus objects
# https://github.com/liao961120/pttR/blob/master/R/corp-df2corp.R
df2qcorp <- function(df, docid_colname, text_colname, ...) {
  qcorp <- quanteda::corpus(df,
                            docid_field = docid_colname,
                            text_field = text_colname, ...)
  
  return(qcorp)
}


df2tmcorp <- function(df, docid_colname, text_colname, PCorpus = FALSE, ...) {
  df <- rename(df, "doc_id" = docid_colname) %>%
    rename("text" = text_colname) %>%
    select("doc_id", "text", everything())

  ifelse(tm::PCorpus == T,
         tmcorp <- tm::PCorpus(tm::DataframeSource(df), ...),
         tmcorp <- tm::VCorpus(tm::DataframeSource(df), ...))
  
  return(tmcorp)
}
