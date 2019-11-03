library(jsonlite)
library(dplyr)

set.seed(2019)

pro = fromJSON("for_samesex_marriage.json")
anti = fromJSON("against_samesex_marriage.json")

pro = pro %>% filter(content != "", title != "") %>% sample_n(150)
anti = anti %>% filter(content != "", title != "") %>% sample_n(150)

  
for (i in seq_along(pro$post_url)) {
  title = pro$title[i]
  content = pro$content[i]
  
  # Save to text
  writeLines(c(title, "", content), paste0("../txt/pro_", i ,".txt"))
}


for (i in seq_along(anti$post_url)) {
  title = anti$title[i]
  content = anti$content[i]
  
  # Save to text
  writeLines(c(title, "", content), paste0("../anti_", i ,".txt"))
}