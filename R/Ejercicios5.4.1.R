library(nycflights13)
library(tidyverse)
library(dplyr)
nycflights13::flights

#5.4.1
#1
select(flights,dep_time,dep_delay,arr_time,arr_delay)
filtro <- select(flights,dep_time,dep_delay,arr_time,arr_delay,everything())
select(filtro,dep_time:arr_delay)
select(flights,starts_with("de"),starts_with("arr"))
vars2 <- c("dep_time","dep_delay","arr_time","arr_delay")
select(flights,any_of(vars2))
#2
select(flights,dep_time,dep_time)  #solo la muestra 1 vez
#3
vars <- c("year", "month", "day", "dep_delay", "arr_delay") #para este vector nos ayuda a escoger las variables que componen el vector
select(flights,any_of("year")) # el any of escoge las varibales que se le indiquien de la tabla seleccionada
#4
select(flights, contains("DEP"))# De esta manera se puede filtrar las variables que tengan esta palabra, por el tema del nombre de la funcion se logra esperar un resultado
