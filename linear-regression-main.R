library(tidyverse)
library(dplyr)

#linear regression flow:
#theory on correlation and hypothesis 
#visualize correlation and overlay hypothesis
#theory on error
#visualize error
#theory on error reduction through iteration or math
#demonstrate with code
#demonstrate with preexisting vectorised tools

#source data.. Titanic?
dat <- read.csv("Titanictrain.csv")
class(dat)
str(dat)
summary(dat)

#cleaining - 177 Age NAs..... replace NAs with ages matching train distribution.
dat %>% ggplot() +
  geom_histogram(aes(Age),na.rm = TRUE,binwidth = 2) +
  labs(title = "Age Distribution")

#replicate and sample training data to create Mean age and SD.
#use these figures to randomly create 177 ages for missing data.
n = 10000
b = 1000
age_fix <- replicate( {
  na.omit(dat$Age)
  sample(dat$Age,b,replace = TRUE)
  mean()
  sd()
})


#allocate 10% of training data for cross validation of training model.
dim(dat)
#10% of 891 = 89
dat_cross_val <- dat[sample(nrow(dat),89),]

