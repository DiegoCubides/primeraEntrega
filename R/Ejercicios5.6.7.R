library(nycflights13)
library(tidyverse)
library(dplyr)
nycflights13::flights
#5.6.7
#1
not_cancelled <- flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))
#15 minutos de retraso
Numberfly <- not_cancelled  %>%
  group_by(flight) %>%
  summarise(
    pos = median(arr_delay[arr_delay ==15]),
    neg = median(arr_delay[arr_delay ==-15])
  )
#Siempre llega 10 minutos
Ten <- not_cancelled %>%
  group_by(flight)%>%
  filter(arr_delay==-10)
#30 minutos de retraso
trit <- not_cancelled  %>%
  group_by(flight) %>%
  summarise(
    pos = median(arr_delay[arr_delay ==30]),
    neg = median(arr_delay[arr_delay ==-30])
  )
