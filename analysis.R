# You need to provide outlines of TF-IDF weights for important keywords
# across (a) industry level using 
# the MSCI Global Industry Classification Standard (GICS) 
# and (c) Market level.

# 1132979
# 1755672 1751788 1132979

cik_list_q <- list.files("D:/edgar/Edgar filings_HTML view/Form 10-Q")
cik_list_k <- list.files("D:/edgar/Edgar filings_HTML view/Form 10-K")
companies_q <- companies %>% filter(CIK %in% cik_list_q)
companies_k <- companies %>% filter(CIK %in% cik_list_k)

# dbSendQuery(con, "DROP TABLE prices;")
# dbListTables(con)

prices <- tq_get(symbols[i],
                 from = "2009-01-01",
                 to = "2020-01-01",
                 get = "stock.prices")



##########################################################
this_calendar_data$price <- as.numeric(gsub("\\$","",this_calendar_data$price))

# create the binary occupancy column based on available column
this_calendar_data$occupied <- ifelse(this_calendar_data$available=="t",1,0)

# change the date column format
this_calendar_data$month_year <- 
  format(as.Date(this_calendar_data$date), "%Y-%m")

# obtain occupancy rate and average price by date (month-year)
this_calendar_data <- this_calendar_data %>% 
  group_by(listing_id, month_year) %>% 
  summarise(occupancy_rate = sum(occupied)/n(),
            avgprice = mean(price,na.rm = T))

return(this_calendar_data)



############################################################
# get filing year
filing_split <- strsplit(this_filings, split = "_")[[1]]
this_filing_year <- as.numeric(strsplit(filing_split[length(filing_split)-1], 
                                        split = "-")[[1]][1])


length(unique(this_q$doc_id))

dup <- duplicated(x) | duplicated(x, fromLast = TRUE)
test <- this_q[dup,]

tokens_comments %>% 
  group_by(word, listing_id) %>% 
  summarise(n = sum(n)) %>% ungroup()

