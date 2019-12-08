########## HTTP request ###########
library(httr)
req <- GET("https://rlads2019.github.io", path = c("14", "imt.html"))
req[["status_code"]]
html <- content(req)



########## rvest ##############
library(rvest)
html %>% html_nodes("head") %>% html_nodes("title")
html %>% html_nodes("head") %>% html_nodes("title") %>% html_text()

# Try different CSS selectors
html %>% html_nodes(".institute")
html %>% html_nodes(".institute > img")
html %>% html_nodes(".institute > img") %>% html_text()  # empty string
html %>% html_nodes(".institute > img") %>% html_attr("src")
html %>% html_nodes(".institute > img") %>% html_attr("alt")

# Extract links to personal web site
html %>% html_nodes("ul.member > li > ol > li > a")
html %>% html_nodes("ul.member > li > ol > li > a") %>% html_text()
html %>% html_nodes("ul.member > li > ol > li > a") %>% html_attr("href")



########## Web Developer Tools ##############
req <- GET("https://rlads2019.github.io/lab/")
req[["status_code"]]
html <- content(req)

# Find CSS selector with browser's devtools first
html %>% html_nodes("p.copyright > a")
html %>% html_nodes("p.copyright > a") %>% html_text()
html %>% html_nodes("p.copyright > a") %>% html_attr("href")

