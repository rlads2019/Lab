library(httr)
library(rvest)
# servr::httw(port = 8888, daemon = TRUE)
# servr::httd(port = 8888, daemon = TRUE)
url = 'http://rlads2019.github.io/'
req = httr::GET(url)
req[["status_code"]]
html = httr::content(req)
html %>% html_nodes("a") %>% html_attr("href")
html %>% html_nodes("a#forkme_banner") %>% html_attr("href")



httr::content(req) %>% html_nodes(css = "ul li")

read_html(url) %>% html_nodes(css = "ul, ol")


rlads = read_html("")
