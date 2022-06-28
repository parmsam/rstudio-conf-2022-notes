# Purpose: webscrape public rstudio conf schedule for easier note taking

# load libraries ----
library(rvest)
library(stringr)
library(clipr)

# ensure shed profile and schedule are public in privacy settings ----
# declare public profile here  ----
profile_link <- "https://rstudioconf2022.sched.com/sam1291?iframe=no"

html <- read_html(profile_link)

# get html nodes with event names and add h3 format hash ----
my_sched <- html %>%
  html_nodes(xpath ='//*[@id="sched-page-me-schedule"]/div/div/span') %>%
  html_text2() %>%
  str_c("### ", .)

# write to clipboard ----
clipr::write_clip(my_sched)




