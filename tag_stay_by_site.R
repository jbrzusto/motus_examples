## get the earliest and latest timestamp for each tag at each site

library(dplyr)
## open a virtual data frame from data file for your project
x = tbl(src_sqlite("2016_PROJECT_globaltags.sqlite"), "tags")

## group by site and tag, then summarize the time period
x %>% group_by (site, fullID) %>% summarize (mint = min(ts), maxt = max(ts)) %>% arrange(fullID, site)
