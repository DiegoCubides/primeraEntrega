library(nycflights13)
library(tidyverse)
library(dplyr)
nycflights13::flights
#5.2.4 Exercises
#1
arrival_delays <- filter(flights,arr_delay>=120)
#2
vuelos_houston <- filter(flights,dest %in% c("IAH","HOU"))
#4
salida_jun_agost_sep <- filter(flights,month %in% c(7,8,9))
