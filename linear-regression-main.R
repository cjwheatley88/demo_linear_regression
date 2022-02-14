library(tidyverse)
library(dplyr)
library(broom)

#read in files

dat_train_path <- file.path("~/data_projects/demo_linear_regression/house_prices_train.csv")

dat_train <- read.csv(file = dat_train_path)

dat_test_path <- file.path("~/data_projects/demo_linear_regression/house_prices_test.csv")

#dat_test <- read.csv(file = dat_test_path)

str(dat_train)

summary(dat_train)



