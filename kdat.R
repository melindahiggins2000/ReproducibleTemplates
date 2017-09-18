kdat1 <- readr::read_csv("https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KCLT.csv")

kdat1 %>% 
  select(actual_mean_temp) %>%
  summary()

kdat1 %>% 
  select(actual_mean_temp) %>%
  ggplot(aes(actual_mean_temp)) + 
    geom_histogram()

kdat1 %>% 
  select(actual_mean_temp) %>%
  ggplot(aes(actual_mean_temp)) + 
  geom_density()

# 10 weather stations

filelist <- c(
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KCLT.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KCQT.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KHOU.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KIND.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KJAX.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KMDW.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KNYC.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KPHL.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KPHX.csv",
  "https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/us-weather-history/KSEA.csv"
              )

library(tidyverse)
library(purrr)

KdataAll <- filelist %>%
  map(read_csv)

KdataAll[[1]] %>% 
  select(actual_mean_temp) %>%
  ggplot(aes(actual_mean_temp)) + 
  geom_density()



