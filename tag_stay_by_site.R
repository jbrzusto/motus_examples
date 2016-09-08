library(dplyr)
x = tbl(src_sqlite("2016_PROJECT_globaltags.sqlite"), "tags")
x %>% group_by (site, fullID) %>% summarize (mint = min(ts), maxt = max(ts)) %>% arrange(fullID, site)
