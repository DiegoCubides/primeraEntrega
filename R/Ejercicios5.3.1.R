library(nycflights13)
library(tidyverse)
library(dplyr)
nycflights13::flights
#5.3.1 Ejercicios
#1 -

valores_NA_al_principio <-arrange(flights,desc(is.na(dep_delay)))
#2
vuelos_retrasados <- arrange(flights,desc(dep_delay))
vuelos_salieron_antes <-  filter(vuelos_retrasados,dep_delay<=-1)
#3
vuelos_mas_rapidos <- arrange(flights,hour,desc(distance))
#4
vuelos_con_mas_distancia <- arrange(flights,desc(distance))
#vuelo con menor distancia 	-> 1632
