library(rvest)
# servr::httw(port = 8888, daemon = TRUE)
# servr::httd(port = 8888, daemon = TRUE)
url = 'http://127.0.0.1:4000/'
url =  'http://localhost:4000/'
req = httr::GET(url)

httr::content(req) %>% html_nodes(css = "ul li")

read_html(url) %>% html_nodes(css = "ul, ol")
