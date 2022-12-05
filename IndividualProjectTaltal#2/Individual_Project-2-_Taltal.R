library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

###---TwitterCreds--###
CONSUMER_SECRET <- "5fikcIfYieq3Yqaqf80fLRJLITCg10eRSXgUBHkhZa836WnP35"
CONSUMER_KEY <- "mOxonIhWeeb3aT8uKahOJESZB"
ACCESS_SECRET <- "ZAfXCkfu9PFoneXvhWPGaBrn4VwNcsV9Q5pHhGdyrTF9N"
ACCESS_TOKEN <- "1595030186000470017-QRGI98lJnYgTt56G5yqMrrdSmHSMxU"

###---Connect me to Twitter--###
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)


# EXTRACTING TWEETS.
ball <- searchTwitter("Football", 
                              n=10000, 
                              lang="en", 
                              since="2022-11-30", 
                              until="2022-12-5", 
                              retryOnRateLimit = 120)
ball

# CONVERTING LIST DATA TO DATA FRAME.
ballDF <- twListToDF(ball)
# Save it
save(ballDF,file = "ballDF.Rdata")


#####__________TWEETS___________________________####
# SUBSETTING USING THE dplyr() PACKAGE.
score <- ballDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
score

###############################################################################
#TWEETS
score %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

keeper <- score %>%  mutate(Created_At_Round = created %>% 
                  round(units = 'hours') %>% as.POSIXct())
keeper

minims <- score %>% pull(created) %>% min()
minims
maxi <- score %>% pull(created) %>% max()
maxi

#Plot.
MESSI <- ggplot(keeper, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of Tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

MESSI %>% ggplotly()



#==============================================================================
#Retweets

twits <- ballDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)
twits


twits %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

crt2 <- twits %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
crt2

mini<- twits %>% pull(created) %>% min()
mini 
maxie <- twits %>% pull(created) %>% max()
maxie

# Plot.
RIO <- ggplot(crt2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of Tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

RIO %>% ggplotly()

