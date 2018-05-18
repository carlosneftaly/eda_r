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

# Carga de archivo .csv: 
datos<-read.csv('Datos/datosS1.csv', sep=';')
attach(datos)