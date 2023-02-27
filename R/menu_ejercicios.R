
retrieve_answer <- function(a){
  if(a=="1"){
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

  }else if(a=="2"){
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


  }
  else if(a=="3"){
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

  }
  else if(a=="4"){

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
  }
  else if(a=="5"){
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


  }
  else if(a=="6"){
    print("falta ")

  }
}
print("El siguiente codigo tiene la solucion de los ejercicios propuesto para la primera entrega")
print("1-> 5.2.4 : items 1, and 2")
print("2-> 5.3.1 : all items")
print("3-> 5.4.1 : items 2, 3, and 4")
print("4-> 5.5.2 Exercises: items 1, and 2")
print("5-> 5.6.7 Exercises: item 1")
print("5-> 7.1 Exercises: item 2 esta ")
x <- readline(prompt="Ingrese una respuesta")

retrieve_answer(x)
