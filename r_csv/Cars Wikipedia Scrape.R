library(dplyr)
library(rvest)

link = "https://en.wikipedia.org/wiki/Comma-separated_values"
page = read_html(link)

Make = page %>% html_nodes(".wikitable td:nth-child(2)") %>% html_text()
Year = page %>% html_nodes(".wikitable td:nth-child(1)") %>% html_text()
Model = page %>% html_nodes ("td:nth-child(3)") %>% html_text()
Description = page %>% html_nodes("td:nth-child(4)") %>% html_text()
Price = page %>% html_nodes("td:nth-child(5)") %>% html_text()

Cars = data.frame(Make, Year, Model, Description, Price, stringsAsFactors =  F)

write.csv(Cars, "Cars.csv")
read.csv("cars.csv")

View(Cars)
