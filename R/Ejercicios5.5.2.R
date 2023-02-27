library(nycflights13)
library(tidyverse)
library(dplyr)
nycflights13::flights
#5.5.2
#1
transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100,
          sched_dep_time,
          hour_sched_dep_time = sched_dep_time %/%100,
          minute_sched_dep_time =sched_dep_time%%100
)
#2
view(transmute(flights,air_time,x=arr_time-dep_time))
#Que esperas ver? esperaba ver el mismo tiempo ya que el tiempo de vuelo corresponde al tiempo que pasa desde que despega hasta que aterriza
#¿Que ves? que los tiempos no coinciden y algunos estan muy desfazados
#¿Qué necesitas hacer para arreglarlo?crear una nueva variable que me compare la diferencia del resultado y eso restarselo a a x para que me de el mismo tiempo de vuelo
