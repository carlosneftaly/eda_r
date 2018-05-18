#' ---
#' title: "Análisis descriptivo y Exploratorio con R"
#' author: "Nombre y apellido"
#' date: "Mes día,  año"
#' ---


# Nota: recuerde registrar sus datos con las variables en cada columna y las
# observaciones en las filas. La primera fila debe contener los nombres de las
# variables y se debe comenzar en la primera celda (A1)

# Cargar paquetes para análisis
library(lattice)
library(car)
require(multcomp)
require(agricolae)
library(ggplot2)
library(tidyverse)

# Carga de archivo .csv: 
datos<-read.csv('Datos/datosS1.csv', sep=';')
attach(datos)

# El argumento 'sep' varia en cada computador entre , ó ;, revisen cual es el adecuado.
# Para 'dec', argumento que indica cuál es el separador decimal, la opciones son , ó . .

################ Estadísticas descriptiva ###############################

### Medidas de resumen para variables cuantatitativas ####
    ## Media
    mean(Var1) 
    ## Var1: Hace referencia al nombre de unas la variables cuantitativas dentro de la base de datos.
    ## Desviación estándar 
    sd(Var1)
    ## Var1: Hace referencia al nombre de unas la variables cuantitativas dentro de la base de datos.
    ## Varianaza 
    # Se calcula como la desviación al cuadrado
    
#### Tablas de frecuencia ####### 
    table(Var2)
    ## Var2: Hace referencia al nombre de unas la variables cualitativas dentro de la base de datos.
    # El resultad obtenido equivale a la frecuencia absoluta de cada nivel de la variable. 
    # Cruzada
    table(Var2, Var2)
    
##### Gráficos univariantes ######################
    #Sectores 
  pie(table(smoker), col = c('green', 'blue'))
    #Tortas
  barplot(table(smoker))
  
###### Gráficos bivariados #################
  
  ### Cajas y bigotes 
  ggplot(datos, aes(x=status, y=heartbeat,  colour=status)) + geom_boxplot() 
  + theme_bw()
  
  
  
  ### Cajas y bigotes con puntos sobrepuestos
  ggplot(datos, aes(x=status, y=heartbeat,  colour=status)) +
    geom_boxplot()   + theme_bw() + geom_jitter()
  
  ## Gráficos de dispersión  
  
  ggplot(datos, aes(x=oxygen, y=heartbeat)) + 
    geom_point() + geom_smooth(method = "lm")+ theme_bw()

  ### Matriz de correlación 
  
  pairs(datos[,3:8], pch = 19, lower.panel = NULL, col = sex)
  