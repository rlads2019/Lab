###### HTTP request with httr ######
library(httr)
library(dplyr)

# https://api.exchangeratesapi.io/history?start_at=2017-01-03&end_at=2017-01-03
req <- GET('https://api.exchangeratesapi.io/',
    path = 'history',
    query = list(start_at = "2017-01-03",
                 end_at = "2017-01-03")
    )

req[["url"]]
req[["status_code"]]

# Return parsed content
content(req)
# Return raw string (JSON in this case)
content(req, as = "text")


rlads <- GET("https://rlads2019.github.io/")
# Return raw HTML string
content(rlads, as = "text")


###### parse JSON in R ######
library(jsonlite)

# Convert JSON string to R's list
json_str <- '{
  "name":"美髮",
  "subscriptionCount":1838,
  "Subscribed":false,
  "postThumbnail":{
    "size":null
  },
  "topics":["剪髮","染髮"]
}'

fromJSON(json_str, simplifyVector = FALSE)


# Convert R's list to JSON string
r_list <- list(
  name = "美髮",
  subscriptionCount = 1838,
  subscribed = FALSE,
  postThumbnail = list(
    size = NULL
  ),
  topics = list("剪髮","染髮")
)

toJSON(r_list, null = "null", auto_unbox = TRUE)

