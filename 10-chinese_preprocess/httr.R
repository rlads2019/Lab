library(httr)
library(dplyr)

set.seed(2019)

baseurl = 'https://www.dcard.tw/'


df <- tibble::tibble(forum = "", post = list())

for (forum in c("freshman", "makeup", "relationship", "funny")) {
  
  # Get post indices
  x = GET(baseurl, path = c("_api", "forums", forum, "posts"))
  resp = content(x)
  
  # Sample posts
  sampled_posts_info <- resp[sample(seq_along(resp), 20)]
  post_ids <- sapply(sampled_posts_info, function (ele) ele[["id"]])

  # Get individual posts
  for (i in seq_along(post_ids)) {
    a_post <- GET(baseurl, path = c("_api", "posts", post_ids[i]))
    post_content <- content(a_post)
  
    # Save post to file
    out_vec <- c(paste0("【", post_content$title, "】"), post_content$content)
    writeLines(text = out_vec, paste0("dcard/", forum, "_", i, ".txt"))    
  }
}





