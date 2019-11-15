###### Convert JSON string to List in R ######
json_str1 = '{
  "name":"美髮",
  "subscriptionCount":1838,
  "subscribed":false,
  "topics":["剪髮","染髮","洗髮"],
  "postThumbnail":{
    "size":null
  }
}'

jsonlite::fromJSON(json_str1, simplifyVector = F)


####### HTTP Request #######
library(httr)

# JSON
# https://www.dcard.tw/_api/forums
dcard <- GET("https://www.dcard.tw/", 
             path = c("_api", "forums"))
dcard[["status_code"]]
dcard[["url"]]
content(dcard)  # Auto parse json into R object

# https://exchangeratesapi.io/  
# https://api.exchangeratesapi.io/latest?base=USD
exchange <- GET("https://api.exchangeratesapi.io",
           path = "latest",
           query = list(base = "USD"))
exchange[["status_code"]]
exchange[["url"]]

# https://api.exchangeratesapi.io/latest?base=USD?start_at=2018-01-01&end_at=2018-09-01
exchange <- GET("https://api.exchangeratesapi.io",
           path = "latest",
           query = list(base = "USD",
                        start_at = "2018-01-01",
                        end_at = "2018-09-01"))
exchange[["status_code"]]
exchange[["url"]]


# Google
google <- httr::GET("http://google.com/", 
              path = "search", 
              query = list(q = "中文"))
google[["status_code"]]
google[["url"]]

# HTML
rlads <- GET("https://rlads2019.github.io/")
rlads[["status_code"]]
rlads[["url"]]
content(rlads)  # Auto parse HTML into R object
